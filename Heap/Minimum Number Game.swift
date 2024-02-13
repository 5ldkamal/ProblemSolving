//
//  Minimum Number Game.swift
//  LeetCode
//
//  Created by Khaled Kamal on 12/02/2024.
//

import Foundation
//Minimum Number Game
//https://leetcode.com/problems/minimum-number-game/description/
func numberGame(_ nums: [Int]) -> [Int] {
    var nums = nums.sorted()
    
    var i = 0
    while i < nums.count - 1 {
        nums.swapAt(i, i + 1)
        i += 2
    }
    
    return nums
}

func testNumberGame(){
    print(numberGame([5,4,2,3]))
}
