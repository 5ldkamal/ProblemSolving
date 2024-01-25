//
//  Find First Palindromic String in the Array.swift
//  LeetCode
//
//  Created by Khaled Kamal on 25/01/2024.
//

import Foundation
// Find First Palindromic String in the Array
// https://leetcode.com/problems/find-first-palindromic-string-in-the-array/description/

func firstPalindrome(_ words: [String]) -> String {
    for word in words {
        
        if word.count == 1 {
            return word
        }
        
        var left = word.startIndex
        var right = word.index(before: word.endIndex)

        var isPalindrome: Bool = false
        while left < right {
            if word[left] == word[right] {
                isPalindrome = true
            } else {
                isPalindrome = false
                break
            }

            left = word.index(after: left)
            right = word.index(before: right)
        }

        if isPalindrome {
            return word
        }
    }
    return ""
}

func testFirstPalindrome() {
    print(firstPalindrome(["abc", "car", "ada", "racecar", "cool"]))

    print(firstPalindrome(["notapalindrome", "racecar"]))

    print(firstPalindrome(["def", "ghi"]))
}
