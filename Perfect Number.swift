//
//  Perfect Number.swift
//  LeetCode
//
//  Created by Khaled Kamal on 26/08/2024.
//

import Foundation
// Perfect Number
// https://leetcode.com/problems/perfect-number/description/

func checkPerfectNumber(_ num: Int) -> Bool {
    var result = 0

    for i in 1 ..< num {
        if num % i == 0 {
            result += i
        }
    }

    return result == num
}

func testCheckPerfectNumber() {
    print(checkPerfectNumber(28))
    print(checkPerfectNumber(7))
}
