//
//  3. Longest Substring Without Repeating Characters.swift
//  LeetCode
//
//  Created by Khaled Kamal on 17/11/2023.
//

import Foundation
//3. Longest Substring Without Repeating Characters
//https://leetcode.com/problems/longest-substring-without-repeating-characters/description/?envType=study-plan-v2&envId=top-interview-150

//MARK: - Wrong One it needs modification 
//func lengthOfLongestSubstring2(_ s: String) -> Int {
//    var string = ""
//    var lW = s.startIndex
//    var rW = s.startIndex
//    var count: Int = 0
//    
//    
//    while rW < s.endIndex {
//        if let indexOfRepeated = string.firstIndex(of: s[rW]) {
//            lW = s.index(after: indexOfRepeated)
//        }
//        
//        string = String(s[lW...rW])
//        
//        rW = s.index(after: rW)
//        
//        count = max(count, string.count)
//    }
//    
//    return count
//}


func lengthOfLongestSubstring2(_ s: String) -> Int {
    var maxLength = 0
    var lW = 0
    var dic: [Character: Int] = [:]
    
    for (rW , item) in s.enumerated() {
        
        if let indexOfStart = dic[item] {
            lW = max(lW, indexOfStart + 1)
        }
        
        dic[item] = rW
        maxLength = max(maxLength, rW - lW + 1)
    }
    
    return maxLength
}



func testlengthOfLongestSubstring2() {
    print(lengthOfLongestSubstring2("abcabcbb")) // 3
    print(lengthOfLongestSubstring2("bbbbb")) //1
    print(lengthOfLongestSubstring2("pwwkew")) //3
    print(lengthOfLongestSubstring2("dvdf")) //3
}



