func isPalindrome(_ s: String) -> Bool {
    var s = s.filter({$0.isLetter || $0.isNumber}).lowercased()
    if s.isEmpty {
        return true
    }
    var left : String.Index = s.startIndex
    var right : String.Index = s.index(before: s.endIndex)
    
    while left < right {
        if s[left] == s[right] {
            left = s.index(after: left)
            right = s.index(before: right)
        }else{
            return false
        }
    }
    
    return true
}

func testiIsPalindrome(){
    print(isPalindrome("A man, a plan, a canal: Panama"))
    print(isPalindrome("race a car"))
    print(isPalindrome(" "))
    print(isPalindrome("aa"))
}
