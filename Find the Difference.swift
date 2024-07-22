//
//  Find the Difference.swift
//  LeetCode
//
//  Created by Khaled Kamal on 22/07/2024.
//

import Foundation
// Find the Difference
// https://leetcode.com/problems/find-the-difference/description/

func findTheDifference(_ s: String, _ t: String) -> Character {
    var dic: [Character: Int] = [:]
    for char in s {
        dic[char, default: 0] += 1
    }

    for char in t {
        if let count = dic[char] {
            if count == 0 {
                return char
            } else {
                dic[char] = count - 1
            }

        } else {
            return char
        }
    }

    return t[s.startIndex]
}

func testFindTheDifference() {
    print(findTheDifference("abcd", "abcde"))
    print(findTheDifference("", "y"))
}
