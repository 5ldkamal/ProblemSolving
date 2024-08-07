//
//  Teemo Attacking.swift
//  LeetCode
//
//  Created by Khaled Kamal on 06/08/2024.
//

import Foundation
// Teemo Attacking
// https://leetcode.com/problems/teemo-attacking/description/
func findPoisonedDuration(_ timeSeries: [Int], _ duration: Int) -> Int {
    guard duration > 0 else {
        return 0
    }

    var total = 0
    
    for i in 0..<(timeSeries.count - 1) {
        total += min(duration , timeSeries[i + 1] - timeSeries[i])
    }

    return total + duration
}

func testFindPoisonedDuration() {
    print(findPoisonedDuration([1, 4], 2))
    print(findPoisonedDuration([1, 2], 2))
    print(findPoisonedDuration([1, 2, 3, 4, 5, 6, 7, 8, 9], 100000))
}

/*
  1 2
  4 5
 */
