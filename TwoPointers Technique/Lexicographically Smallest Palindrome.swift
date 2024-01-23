//
//   Lexicographically Smallest Palindrome.swift
//  LeetCode
//
//  Created by Khaled Kamal on 23/01/2024.
//

import Foundation
// Lexicographically Smallest Palindrome
// https://leetcode.com/problems/lexicographically-smallest-palindrome/description/

func makeSmallestPalindrome(_ s: String) -> String {
    var updateString = Array(s)
    var left = 0
    var right = updateString.count - 1

    while left < right {
        if updateString[left] != updateString[right] {
            let minValue = min(updateString[left], updateString[right])
            updateString[left] = minValue
            updateString[right] = minValue
        }
        left += 1
        right -= 1
    }

    return String(updateString)
}

func testMakeSmallestPalindrome() {
    print(makeSmallestPalindrome("egcfe"))
    print("===================")
    print(makeSmallestPalindrome("abcd"))
}
