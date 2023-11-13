//20. Valid Parentheses
//https://leetcode.com/problems/valid-parentheses/description/?envType=study-plan-v2&envId=top-interview-150

func isValid(_ s: String) -> Bool {
    guard s.count % 2 == 0 else{
        return false
    }
    
    var stack : [Character] = []
    
    for index in s.indices  {
        switch s[index] {
        case ")" where stack.last  == "(":
            stack.removeLast()
            
        case "]" where stack.last  == "[" :
            stack.removeLast()
            
        case "}" where  stack.last  == "{":
            stack.removeLast()
            
        default :
            stack.append(s[index])
        }
    }
    
    return stack.isEmpty
}


func testIsValid2() {
    print(isValid("{[()]}"))
    print(isValid("{}()"))
    print(isValid("{(})"))
    print(isValid(")"))
}
