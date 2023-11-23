//
//  Valid Anagram.swift
//  LeetCode
//
//  Created by Khaled Kamal on 22/11/2023.
//

import Foundation
//Valid Anagram
//https://leetcode.com/problems/valid-anagram/description/?envType=study-plan-v2&envId=top-interview-150
func isAnagram(_ s: String, _ t: String) -> Bool {
    
    guard s.count == t.count else {
        return false
    }
    
    var dic: [Character : Int] = [:]
    
    for index in s.indices {
        let item = s[index]
        
        if let value = dic[item] {
            dic[item] = value + 1
        }else{
            dic[item]  = 1
        }
    }
    
    for index in t.indices {
        let item = t[index]
        if let value = dic[item] , value > 0 {
            dic[item] = value - 1
        }else{
           return false
        }
    }
    
    return true
}

func testisAnagram(){
    print(isAnagram("anagram", "nagaram"))
    print(isAnagram("rat", "car"))
    print(isAnagram("ab", "a"))
}
