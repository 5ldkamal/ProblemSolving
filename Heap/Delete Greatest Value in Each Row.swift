//
//  Delete Greatest Value in Each Row.swift
//  LeetCode
//
//  Created by Khaled Kamal on 13/02/2024.
//

import Foundation
// Delete Greatest Value in Each Row
// https://leetcode.com/problems/delete-greatest-value-in-each-row/

func deleteGreatestValue(_ grid: [[Int]]) -> Int {
    var result = 0
    var gridI: [[Int]] = []
    var columns = grid[0].count
    var rows = grid.count
    
    for row in grid {
        gridI.append(row.sorted())
    }
    
    for column in 0..<columns {
        var list : [Int] = []
        for row in 0..<rows {
            list.append(gridI[row][column])
        }
        
        result += list.max() ?? 0
    }
    
    return result
}

func testDeleteGreatestValue() {
    print(deleteGreatestValue([[1, 2, 4], [3, 3, 1]]))
    print(deleteGreatestValue([[10]]))
}

