//
//  Number of 1 Bits.swift
//  LeetCode
//
//  Created by Khaled Kamal on 10/10/2023.
//

import Foundation
//Number of 1 Bits
//https://leetcode.com/problems/number-of-1-bits/description/
func hammingWeight(_ n: Int) -> Int {
    var count = 0
    var num = n

    for _ in 0..<32 {
        if num & 1 == 1 {
            count += 1
        }
        num >>= 1
    }
    return count
}

func testHammingWeight() {
    print(hammingWeight(00000000000000000000000000001011))
}
