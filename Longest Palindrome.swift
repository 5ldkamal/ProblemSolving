//
//  Longest Palindrome.swift
//  LeetCode
//
//  Created by Khaled Kamal on 12/03/2024.
//

import Foundation
// Longest Palindrome
// https://leetcode.com/problems/longest-palindrome/
func longestPalindrome(_ s: String) -> Int {
    var hashTable: [Character: Int] = [:]
    
    for index in s.indices {
        hashTable[s[index], default: 0] += 1
    }
    
    var length = 0
    var isOdd = false
    
    for frequencies in hashTable.values {
        length += 2 * (frequencies / 2)
        
        if frequencies % 2 != 0 {
            isOdd = true
        }
    }
    
    if isOdd {
        length += 1
    }
    
    return length
}

func testLongestPalindrome()  {
    print(longestPalindrome("abccccdd"))
    print(longestPalindrome("a"))
}

/*
 "ab ccccc dd"
 */
