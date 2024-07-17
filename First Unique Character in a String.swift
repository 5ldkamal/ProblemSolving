//
//  First Unique Character in a String.swift
//  LeetCode
//
//  Created by Khaled Kamal on 17/07/2024.
//

import Foundation
// First Unique Character in a String
// https://leetcode.com/problems/first-unique-character-in-a-string/description/

// MARK: -  Time Limit Exceeded

// func firstUniqChar(_ s: String) -> Int {
//    var dic: [Character:Bool] = [:]
//    for i in s.indices {
//
//        var isFound : Bool = false
//        for j in s[s.index(after: i) ..< s.endIndex].indices {
//
//            if s[i] == s[j] {
//                dic[s[i]] = true
//                isFound = true
//            }
//        }
//
//        if !isFound , dic[s[i]] == nil {
//            return  s.distance(from: s.startIndex, to: i)
//        }
//    }
//
//    return -1
// }

func firstUniqChar(_ s: String) -> Int {
    var dic: [Character: Int] = [:]
    for i in s.indices {
        if let count = dic[s[i]] {
            dic[s[i]] = count + 1
        } else {
            dic[s[i]] = 1
        }
    }

    for i in s.indices {
        if let count = dic[s[i]], count == 1 {
            return s.distance(from: s.startIndex, to: i)
        }
    }

    return -1
}

func testFirstUniqChar() {
    print(firstUniqChar("leetcode"))
    print(firstUniqChar("loveleetcode"))
    print(firstUniqChar("aabb"))
}
