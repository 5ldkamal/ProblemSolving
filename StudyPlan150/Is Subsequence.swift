func isSubsequence(_ s: String, _ t: String) -> Bool {
    if s.isEmpty {
    return true
    }
  
    guard s.count < t.count  else{
        return false
    }
  
    var start = t.startIndex
    var end = t.endIndex
    var isFound : Bool = false
    
    for index in s.indices {
        isFound = false
        while start != end {
            if s[index] == t[start] {
                start = t.index(after: start)
                isFound = true
                break
            }
            start = t.index(after: start)
        }
    }
    return isFound
}


func testIsSubsequence() {
    print(isSubsequence("abc", "ahbgdc"))
    print(isSubsequence("axc", "ahbgdc"))
}
