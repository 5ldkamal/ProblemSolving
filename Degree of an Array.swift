//
//  Degree of an Array.swift
//  LeetCode
//
//  Created by Khaled Kamal on 11/09/2024.
//

import Foundation
// Degree of an Array
// https://leetcode.com/problems/degree-of-an-array/description/
func findShortestSubArray(_ nums: [Int]) -> Int {
    var freq: [Int: Int] = [:]
    var firstOcc: [Int: Int] = [:]
    var lastOcc: [Int: Int] = [:]
    var degree = 0
    
    for (index, num) in nums.enumerated() {
        freq[num, default: 0] += 1
        
        if firstOcc[num] == nil {
            firstOcc[num] = index
        }
        
        lastOcc[num] = index
        
        degree = max(degree, freq[num]!)
    }
    
    var minLength = nums.count
    
    for (key, value) in freq {
        if value == degree {
            let length = lastOcc[key]! - firstOcc[key]! + 1
            minLength = min(minLength, length)
        }
    }
    return minLength
}

func testFindShortestSubArray() {
    print(findShortestSubArray([1, 2, 2, 3, 1]))
    print(findShortestSubArray([1, 2, 2, 3, 1, 4, 2]))
}
