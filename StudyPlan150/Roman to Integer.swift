//
//  Roman to Integer٢.swift
//  LeetCode
//
//  Created by Khaled Kamal on 27/10/2023.
//

import Foundation
//Roman to Integer
//https://leetcode.com/problems/roman-to-integer/?envType=study-plan-v2&envId=top-interview-150

func romanToInt(_ s: String) -> Int {
    guard !s.isEmpty else{
        return 0
    }
    let romans : [String: Int] = ["I":1,
                                  "V":5,
                                  "X":10,
                                  "L":50,
                                  "C":100,
                                  "D":500,
                                  "M":1000]
    var result: Int = 0
    let sAsList = s.map({String($0)})
    
    for i in 0..<sAsList.count - 1 {
        var current  = sAsList[i]
        var next     = sAsList[i + 1]
        if let currentValue = romans[current] {
            if let nextValue = romans[next] , nextValue > currentValue {
                result -= currentValue
            }else{
                result += currentValue
            }
        }
    }
    
    result += romans[sAsList[sAsList.count - 1]] ?? 0
    
    return result
}

func testRomanToInt2() {
    print(romanToInt("III"))
    print(romanToInt("LVIII"))
    print(romanToInt("MCMXCIV"))
}
