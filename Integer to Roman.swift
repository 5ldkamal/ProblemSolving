//
//   Integer to Roman.swift
//  LeetCode
//
//  Created by Khaled Kamal on 12/09/2024.
//

import Foundation
// Integer to Roman
// https://leetcode.com/problems/integer-to-roman/description/?envType=problem-list-v2&envId=math

func intToRoman(_ num: Int) -> String {
    var result = ""
    let dic = [
        1000: "M",
        900: "CM",
        500: "D",
        400: "CD",
        100: "C",
        90: "XC",
        50: "L",
        40: "XL",
        10: "X",
        9: "IX",
        5: "V",
        4: "IV",
        3: "III",
        2: "II",
        1: "I"
    ]

    var num = num
    let keys = dic.keys.sorted(by: >)
    for key in keys {
        let count = num / key
        result += repeatString(dic[key]!, count: count)
        num = num % key
    }

    func repeatString(_ string: String, count: Int) -> String {
        return [String].init(repeating: string, count: count).joined()
    }

    return result
}

func testIntToRoman() {
    print(intToRoman(3749))
    print(intToRoman(58))
    print(intToRoman(1994))
}
