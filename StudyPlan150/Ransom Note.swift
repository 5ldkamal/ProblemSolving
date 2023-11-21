//
//   Ransom Note.swift
//  LeetCode
//
//  Created by Khaled Kamal on 21/11/2023.
//

import Foundation
// Ransom Note
//https://leetcode.com/problems/ransom-note/description/?envType=study-plan-v2&envId=top-interview-150

func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
    var magazineDic : [Character:Int] = [:]
    
    for index in magazine.indices {
        if let value = magazineDic[magazine[index]]{
            magazineDic[magazine[index]] = value + 1
        }else{
            magazineDic[magazine[index]] = 1
        }
    }
    
    for index in ransomNote.indices {
        if let value = magazineDic[ransomNote[index]] , value > 0 {
            magazineDic[ransomNote[index]] = value - 1
        }else{
            return false
        }
    }
    
    return true
}

func testCanConstruct() {
    print(canConstruct("a", "b"))
    print(canConstruct("aa", "ab"))
    print(canConstruct("aa", "aab"))
}
