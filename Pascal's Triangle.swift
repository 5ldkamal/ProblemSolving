// Pascal's Triangle
// https://leetcode.com/problems/pascals-triangle/description/

func generate(_ numRows: Int) -> [[Int]] {
    guard numRows > 0 else {
        return []
    }
    
    var list = [[1]]
    
    for i in 1..<numRows {
        var sub: [Int] = []
        
        sub.append(1)
        
        for j in 1..<i {
            let value = list[i - 1][j] + list[i - 1][j - 1]
            sub.append(value)
        }
        
        sub.append(1)
        
        list.append(sub)
    }

    return list
}

func testPascalTriangle() {
    print(generate(5))
}
