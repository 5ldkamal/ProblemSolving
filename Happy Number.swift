//
//  Happy Number.swift
//  LeetCode
//
//  Created by Khaled Kamal on 11/03/2024.
//

import Foundation
// Happy Number
// https://leetcode.com/problems/happy-number/description/
func isHappy(_ n: Int) -> Bool {
    var number = n
    var seen = Set<Int>()

    while number != 1, !seen.contains(number) {
        seen.insert(number)
        var sum = 0

        var n = number

        while n > 0 {
            let mod = n % 10
            sum += mod * mod
            n /= 10
        }

        number = sum
    }

    return number == 1
}

func testIsHappy() {
    print(isHappy(19))
    print(isHappy(2))
}
