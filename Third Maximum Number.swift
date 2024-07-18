//
//  Third Maximum Number.swift
//  LeetCode
//
//  Created by Khaled Kamal on 18/07/2024.
//

import Foundation
// Third Maximum Number
// https://leetcode.com/problems/third-maximum-number/description/
func thirdMax(_ nums: [Int]) -> Int {
    var nums = Array(Set(nums))
    if nums.count < 3 {
        return nums.max()!
    }
    var sorted = nums.sorted(by: { $0 > $1 })
    return sorted[2]
}

func testThirdMax() {
    print(thirdMax([3, 2, 1]))
    print(thirdMax([1, 2]))
    print(thirdMax([2, 2, 3, 1]))
}
