//https://leetcode.com/problems/excel-sheet-column-number/

func titleToNumber(_ columnTitle: String) -> Int {
    var result = 0
    
    for char in columnTitle.utf8 {
        let scalerValueOfA = UInt8(UnicodeScalar("A").value)
        let value = Int(char  -  scalerValueOfA) + 1
        result = result * 26 + value
    }
    
    return result
}


func testTitleToNumber(){
    print(titleToNumber("A"))
    print(titleToNumber("AB"))
    print(titleToNumber("ZY"))
}
