func longestNiceSubstring(_ s: String) -> String {
    if s.count < 2 {
        return ""
    }
    var subString = ""
    
    var left = s.startIndex
    let right = s.endIndex
    
    while left < right {
        var iLeft = s.index(after: left)
        
        while iLeft < right {
            let _subString = String(s[left ... iLeft])
            
            if isNice(_subString), _subString.count > subString.count {
                subString = _subString
            }
            
            iLeft = s.index(after: iLeft)
        }
        
        left = s.index(after: left)
    }
    
    func isNice(_ sub: String) -> Bool {
        return sub.allSatisfy { c in sub.contains(String(c.lowercased())) && sub.contains(String(c.uppercased())) }
    }
    
    return subString
}

func testLongestNiceSubstring() {
    print(longestNiceSubstring("YazaAay"))
    
    print(longestNiceSubstring("Bb"))
    
    print(longestNiceSubstring("c"))
}
