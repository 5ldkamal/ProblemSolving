//
//  Sort Characters By Frequency.swift
//  LeetCode
//
//  Created by Khaled Kamal on 18/02/2024.
//

import Foundation
// Sort Characters By Frequency
// https://leetcode.com/problems/sort-characters-by-frequency/description/

func frequencySort(_ s: String) -> String {
    var result = ""
    var dic: [Character: Int] = [:]
    
    for item in s {
        if let value = dic[item] {
            dic[item] = value + 1
        } else {
            dic[item] = 1
        }
    }
    
    var list = dic.sorted(by: {$0.value > $1.value})
    
    var index: Int = 0
    while index < list.count {
        
        if list[index].value > 0  {
            result += String(list[index].key)
            list[index].value -= 1
        }else{
            index += 1
        }
    }
    
    return result
}

func testFrequencySort2() {
    print(frequencySort("tree"))
    print(frequencySort("cccaaa"))
    print(frequencySort("Aabb"))
}
