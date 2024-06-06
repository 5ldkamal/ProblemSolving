//
//  Reverse Vowels of a String.swift
//  LeetCode
//
//  Created by Khaled Kamal on 06/06/2024.
//

import Foundation
// https://leetcode.com/problems/reverse-vowels-of-a-string/description/

func reverseVowels(_ s: String) -> String {
    let vowels: [String] = ["a", "u", "o", "i", "e"]
    
    var list = s.map { String($0) }
    
    var left = 0
    var right: Int = list.count - 1
    
    while left < right {
        let isContainLeft = vowels.contains(where: { $0 == list[left].lowercased() })
        let isContainRight = vowels.contains(where: { $0 == list[right].lowercased() })

        if !isContainLeft {
            left += 1
        }
        
        if !isContainRight {
            right -= 1
        }
        
        if isContainLeft, isContainRight {
            list.swapAt(left, right)
            
            left += 1
            right -= 1
        }
    }
    
    return list.joined()
}

func testReverseVowels() {
    print(reverseVowels("hello"))
    print(reverseVowels("leetcode"))
    print(reverseVowels("aA"))
}
