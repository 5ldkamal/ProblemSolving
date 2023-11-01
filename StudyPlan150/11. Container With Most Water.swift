//
//  11. Container With Most Water.swift
//  LeetCode
//
//  Created by Khaled Kamal on 01/11/2023.
//

import Foundation
//11. Container With Most Water
//https://leetcode.com/problems/container-with-most-water/description/?envType=study-plan-v2&envId=top-interview-150
func maxArea(_ height: [Int]) -> Int {
    var left = 0
    var right = height.count - 1
    var maxValue = 0
    
    while left < right {
        let area = min(height[left], height[right]) * (right - left)
        
        maxValue = max(maxValue, area)
        
        if height[left] < height[right] {
            left += 1
        }else{
            right -= 1
        }
    }
    return maxValue
}

func testMaxArea() {
  print(maxArea([1,8,6,2,5,4,8,3,7]))
  print(maxArea([1,1]))
  print(maxArea([2,3,4,5,18,17,6]))
}
