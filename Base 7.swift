//
//  Base 7.swift
//  LeetCode
//
//  Created by Khaled Kamal on 19/08/2024.
//

import Foundation
// Base 7
// https://leetcode.com/problems/base-7/description/
func convertToBase7(_ num: Int) -> String {
    if num == 0 {
        return "0"
    }

    var number = num > 0 ? num : abs(num)
    var base = ""

    while number > 0 {
        base += "\(number % 7)"

        number = number / 7
    }

    var result = num > 0 ? String(base.reversed()) : "-" + String(base.reversed())

    return result
}

func testConvertToBase7() {
    print(convertToBase7(100))
    print(convertToBase7(-7))
    print(convertToBase7(0))
}
