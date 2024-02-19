//
//  Maximum Strong Pair XOR I.swift
//  LeetCode
//
//  Created by Khaled Kamal on 19/02/2024.
//

import Foundation
// Maximum Strong Pair XOR I
// https://leetcode.com/problems/maximum-strong-pair-xor-i/description/

func maximumStrongPairXor(_ nums: [Int]) -> Int {
    var result = 0

    for i in nums {
        for j in nums {
            /*  A pair of integers x and y is called a strong pair if it */
            if abs(i - j) <= min(i, j) {
                result = max(result, i ^ j)
            }
        }
    }

    return result
}


func testMaximumStrongPairXor(){
    print(maximumStrongPairXor([1,2,3,4,5]))
    print(maximumStrongPairXor([10,100]))
    print(maximumStrongPairXor([5,6,25,30]))
}
