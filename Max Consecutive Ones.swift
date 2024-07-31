//
//  Max Consecutive Ones.swift
//  LeetCode
//
//  Created by Khaled Kamal on 31/07/2024.
//

import Foundation
// Max Consecutive Ones
// https://leetcode.com/problems/max-consecutive-ones/description/
func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    var _max = 0
    var consecutive = 0

    for i in nums {
        if i == 0 {
            consecutive = 0
        } else {
            consecutive += 1
        }

        _max = max(_max, consecutive)
    }

    return _max
}

func testFindMaxConsecutiveOnes() {
    print(findMaxConsecutiveOnes([1, 1, 0, 1, 1, 1]))
    print(findMaxConsecutiveOnes([1, 0, 1, 1, 0, 1]))
}
