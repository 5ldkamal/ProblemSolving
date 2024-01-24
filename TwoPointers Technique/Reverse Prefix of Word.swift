//
//  Reverse Prefix of Word.swift
//  LeetCode
//
//  Created by Khaled Kamal on 24/01/2024.
//

import Foundation
// https://leetcode.com/problems/reverse-prefix-of-word/
// Reverse Prefix of Word

//MARK: - Solution 1

 func reversePrefix(_ word: String, _ ch: Character) -> String {
     guard let end = word.firstIndex(where: { $0 == ch }) else {
         return word
     }
     var list = Array(word)
     var left = 0
     var right = word.distance(from: word.startIndex, to: end)

     while left < right {
         list.swapAt(left, right)
         left += 1
         right -= 1
     }

     return String(list)
 }


func testReversePrefix() {
    print(reversePrefix("abcdefd", "d"))
    
    print(reversePrefix("xyxzxe", "z"))
    
    print(reversePrefix("abcd", "z"))
}
