//
//  Keyboard Row.swift
//  LeetCode
//
//  Created by Khaled Kamal on 14/08/2024.
//

import Foundation
// Keyboard Row
// https://leetcode.com/problems/keyboard-row/description/

func findWords(_ words: [String]) -> [String] {
    var list: [String] = []
    var rows = ["qwertyuiop", "asdfghjkl", "zxcvbnm"]
    var dic: [Character: Int] = [:]
    
    for (index, row) in rows.enumerated() {
        for char in row {
            dic[char] = index + 1
        }
    }
    
    for word in words {
        var _word = word.lowercased()
        var isSameRow = true
        let sIndex = dic[_word[_word.startIndex]]
        
        for char in _word {
            if let index = dic[char], sIndex == index {
                continue
            } else {
                isSameRow = false
                break
            }
        }
        
        if isSameRow {
            list.append(word)
        }
    }
    
    return list
}

func testFindWords() {
    print(findWords(["Hello", "Alaska", "Dad", "Peace"]))
    print(findWords(["omk"]))
    print(findWords(["adsdf","sfd"]))
    
}
