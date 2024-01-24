//
//  Merge Strings Alternately.swift
//  LeetCode
//
//  Created by Khaled Kamal on 24/01/2024.
//

import Foundation

func mergeAlternately(_ word1: String, _ word2: String) -> String {
    var word = ""
    var left1 = word1.startIndex
    var left2 = word2.startIndex
    
    let count = word1.count + word2.count
    
    while word.count < count {
        if left1 < word1.endIndex {
            word.append(word1[left1])
            left1 = word1.index(after: left1)
        }
        
        if left2 < word2.endIndex {
            word.append(word2[left2])
            left2 = word2.index(after: left2)
        }
    }
    
    return word
}

func testMergeAlternately() {
    print(mergeAlternately("abc", "pqr"))
    
    print(mergeAlternately("ab", "pqrs"))
    
    print(mergeAlternately("abcd", "pq"))
}
