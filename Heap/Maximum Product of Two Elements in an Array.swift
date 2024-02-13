//
//  Maximum Product of Two Elements in an Array.swift
//  LeetCode
//
//  Created by Khaled Kamal on 13/02/2024.
//

import Foundation
// Maximum Product of Two Elements in an Array
// https://leetcode.com/problems/maximum-product-of-two-elements-in-an-array/
func maxProduct(_ nums: [Int]) -> Int {
    var nums = nums.sorted()

    let lastJ = nums.removeLast()
    let lastI = nums.removeLast()

    return (lastI - 1) * (lastJ - 1)
}

func testMaxProduct() {
    print(maxProduct([3, 4, 5, 2]))
    print(maxProduct([1, 5, 4, 5]))
    print(maxProduct([3, 7]))
}
