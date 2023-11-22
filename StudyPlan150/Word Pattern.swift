//
//  Word Pattern.swift
//  LeetCode
//
//  Created by Khaled Kamal on 21/11/2023.
//

import Foundation
//Word Pattern
//https://app.hubstaff.com/dashboard/71324/me

func wordPattern(_ pattern: String, _ s: String) -> Bool {
    var pList = pattern.map({String($0)})
    var sList = s.components(separatedBy: " ")
    
    if pList.count != sList.count {
        return false
    }
    
    var dic:[String: String] = [:]
    var usedValues:Set<String> = []
    
    for i in 0..<pList.count {
        var pItem  = pList[i]
        var sItem  = sList[i]
        
        if let value = dic[pItem] {
            if value != sItem {
                return false
            }
        }else{
            if usedValues.contains(sItem) {
                return false
            }
            dic[pItem] = sItem
            usedValues.insert(sItem)
        }
    }
    
    return true
 }

func testWordPattern() {
    print(wordPattern("abba", "dog cat cat dog"))
    print(wordPattern("abba", "dog cat cat fish"))
    print(wordPattern("aaaa", "dog cat cat dog"))
    print(wordPattern("aba", "dog cat cat"))
    print(wordPattern("abba", "dog dog dog dog"))
}
