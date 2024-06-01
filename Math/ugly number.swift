//
//  Ugly Number.swift
//  LeetCode
//

import Foundation
// Ugly Number
// https://leetcode.com/problems/ugly-number/description/

func isUgly(_ n: Int) -> Bool {
    guard n > 0 else {
        return false
    }
    
    var number = n
    let factors: [Int] = [2, 3, 5]
    
    for i in factors {
        while number % i == 0 {
            number = number / i
        }
    }
    
    return number == 1
}

func testIsUgly() {
    print(isUgly(1))
    print(isUgly(14))
    print(isUgly(6))
}

/*
 1 2 3 5 7 11 13 .......
 
 12  2 * 2 * 3 = 2^2 * 3^1
 
 14  2 * 7
 
 15  3 * 5
 
 28  2 * 2 * 7
 
 30  2 * 3 * 5
 
 */
