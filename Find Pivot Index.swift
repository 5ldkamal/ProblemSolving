//
//  Find Pivot Index.swift
//  LeetCode
//
//  Created by Khaled Kamal on 06/09/2024.
//

import Foundation
// Find Pivot Index
// https://leetcode.com/problems/find-pivot-index/description/

func pivotIndex(_ nums: [Int]) -> Int {
    var total = nums.reduce(0, +)
    var leftSum = 0

    for i in 0 ..< nums.count {
        var rightSum = total - leftSum - nums[i]
        if rightSum == leftSum {
            return i
        }

        leftSum += nums[i]
    }

    return -1
}

func testPivotIndex() {
    print(pivotIndex([1, 7, 3, 6, 5, 6]))
    print(pivotIndex([1, 2, 3]))
    print(pivotIndex([2, 1, -1]))
    print(pivotIndex([-1, -1, -1, -1, -1, -1]))
}
