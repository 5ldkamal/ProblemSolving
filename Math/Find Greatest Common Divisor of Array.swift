//
//  Find Greatest Common Divisor of Array.swift
//  LeetCode
//
//  Created by Khaled Kamal on 30/09/2024.
//

import Foundation
// Find Greatest Common Divisor of Array
// https://leetcode.com/problems/find-greatest-common-divisor-of-array/description/
func findGCD(_ nums: [Int]) -> Int {
    var a = nums.max()!
    var b = nums.min()!
    
    if a == b {
        return a
    }
    
    while b != 0 {
        let r = a % b
        a = b
        b = r
    }
    
    return a
}

func testFindGCD() {
    print(findGCD([2,5,6,9,10]))
    print(findGCD([7,5,6,8,3]))
}
