//
//  √.swift
//  LeetCode
//
//  Created by Khaled Kamal on 18/02/2024.
//

import Foundation
// Make Array Zero by Subtracting Equal Amounts
// https://leetcode.com/problems/make-array-zero-by-subtracting-equal-amounts/description/

func minimumOperations(_ nums: [Int]) -> Int {
    var nums = nums.sorted()

    var result = 0
    var min: Int? = nums.first(where: { $0 > 0 })

    while let _min = min {
        for i in 0 ..< nums.count {
            if nums[i] != 0 {
                nums[i] = nums[i] - _min
            }
        }

        result += 1
        min = nums.first(where: { $0 > 0 })
    }

    return result
}

func testMinimumOperations() {
    print(minimumOperations([1, 5, 0, 3, 5]))
}
