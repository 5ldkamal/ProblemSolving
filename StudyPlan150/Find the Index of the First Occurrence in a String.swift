//
//  Find the Index of the First Occurrence in a String.swift
//  LeetCode
//
//  Created by Khaled Kamal on 25/10/2023.
//

import Foundation
//https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/solutions/4208632/swift-solution/
func strStr(_ haystack: String, _ needle: String) -> Int {
    
    guard haystack.count >= needle.count else{
        return -1
    }
    for index in haystack.indices {
        var j = index
        var isFound =  true
        for pattern in needle.indices {
            if j == haystack.endIndex || haystack[j] != needle[pattern] {
                isFound = false
                break
            }else{
                j = haystack.index(after: j)
            }
        }
        if isFound {
            return haystack.distance(from: haystack.startIndex, to: index)
        }
    }
    
    return -1
}

func testStrStr(){
    print(strStr("mississippi", "issipi"))
}
