//
//  Missing Number.swift
//  LeetCode
//
//  Created by Khaled Kamal on 02/06/2024.
//

import Foundation
// Missing Number
// https://leetcode.com/problems/missing-number/description/
/*
 Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.
 */

func missingNumber(_ nums: [Int]) -> Int {
    var nums = nums.sorted()

    var i = 0
    while i < nums.count {
        if nums[i] != i {
            return i
        }

        i += 1
    }

    return i
}

func testMissingNumber() {
    print(missingNumber([3, 0, 1]))
    print(missingNumber([0, 1]))
    print(missingNumber([9, 6, 4, 2, 3, 5, 7, 0, 1]))
}
