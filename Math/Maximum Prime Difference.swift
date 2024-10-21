//
//  Maximum Prime Difference.swift
//  LeetCode
//
//  Created by Khaled Kamal on 21/10/2024.
//

import Foundation
// Maximum Prime Difference
// https://leetcode.com/problems/maximum-prime-difference/description/?envType=problem-list-v2&envId=number-theory
func maximumPrimeDifference(_ nums: [Int]) -> Int {
    func isPrime(_ n: Int) -> Bool {
        if n < 2 { return false }
        for i in 2 ..< n {
            if n % i == 0 { return false }
        }
        return true
    }
    
    var left = 0
    var right: Int = nums.count - 1
    var isPrimeLeft = false
    var isPrimeRight = false
    
    while left <= right {
        if isPrime(nums[left]) {
            isPrimeLeft = true
        } else {
            left += 1
        }
        
        if isPrime(nums[right]) {
            isPrimeRight = true
        } else {
            right -= 1
        }
        
        if isPrimeLeft && isPrimeRight {
            return right - left
        }
    }
    
    return 0
}

func testMaximumPrimeDifference() {
    print(maximumPrimeDifference([4, 2, 9, 5, 3]))
    print(maximumPrimeDifference([4, 8, 2, 8]))
}
