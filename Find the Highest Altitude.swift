//
//  Find the Highest Altitude.swift
//  LeetCode
//
//  Created by Khaled Kamal on 16/10/2023.
//

import Foundation
//Find the Highest Altitude
//https://leetcode.com/problems/find-the-highest-altitude/description/

func largestAltitude(_ gain: [Int]) -> Int {
    var max : Int = 0
    var list: [Int] = [0]
    
    for i in 1..<gain.count + 1 {
        let value = list[i - 1] + gain[i - 1]
        list.append(value)
        
        if max < value  {
            max = value
        }
    }
    
    return max
}
