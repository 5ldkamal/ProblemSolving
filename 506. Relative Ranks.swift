//
//  506. Relative Ranks.swift
//  LeetCode
//
//  Created by Khaled Kamal on 20/08/2024.
//

import Foundation
// 506. Relative Ranks
// https://leetcode.com/problems/relative-ranks/description/
func findRelativeRanks(_ score: [Int]) -> [String] {
    let scores = score.sorted(by: { $0 > $01 })
    var dic: [Int: Int] = [:]
    for (index, s) in scores.enumerated() {
        dic[s] = index + 1
    }
    
    var result: [String] = []
    
    for s in score {
        let index = dic[s] ?? 0
        
        switch index {
        case 1:
            result.append("Gold Medal")
        case 2:
            result.append("Silver Medal")
        case 3:
            result.append("Bronze Medal")
        default:
            result.append("\(index)")
        }
    }
    return result
}

func testFindRelativeRanks() {
    print(findRelativeRanks([5, 4, 3, 2, 1]))
    print(findRelativeRanks([10, 3, 8, 9, 4]))
}
