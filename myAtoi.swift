
func myAtoi(_ s: String) -> Int {
    
    let string = s.trimmingCharacters(in: .whitespacesAndNewlines)
    var list = string.map({String($0)})
    
    var number : String = ""
    var sign = ""
    
    if let first =  list.first  , first ==  "-" || first == "+" {
        sign = first
        list.removeFirst()
    }
    
    if let first = list.first , Int(first) == nil {
        return 0
    }
    
    if list.isEmpty {
        return 0
    }
    
    for i in list {
        if Int(i) != nil {
            number += i
        }else  {
            break
        }
    }
    
    number = sign + number
    
    let intNumber : Int = Int(number) ?? Int(sign == "-" ? Int32.min : Int32.max)
    
    guard Int32.min <= intNumber , Int32.max >= intNumber else{
        return Int(sign == "-" ? Int32.min : Int32.max)
    }
    return intNumber
}
