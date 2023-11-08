//
//  209. Minimum Size Subarray Sum.swift
//  LeetCode
//
//  Created by Khaled Kamal on 03/11/2023.
//

import Foundation
//209. Minimum Size Subarray Sum
//https://leetcode.com/problems/minimum-size-subarray-sum/description/?envType=study-plan-v2&envId=top-interview-150
//MARK: - BruteForce
//func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
//    var minLen = nums.count + 1
//    
//    for i in 0..<nums.count {
//        var sum = nums[i]
//        
//        if sum >= target {
//            return 1
//        }
//        
//        var _min = minLen
//        
//        for j in i + 1..<nums.count {
//            sum += nums[j]
//            
//            if sum >= target , (j - i + 1 < minLen) {
//                minLen = (j - i) + 1
//            }
//        }
//    }
//    
//    return minLen == nums.count + 1 ? 0 : minLen
//}

//MARK: - Sliding Window
func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
    var wLeft = 0
    var wRight = -1
    let count = nums.count
    var minLen = nums.count  + 1
    var sum  = 0
    
    while wLeft < count {
        if sum < target , wRight < count - 1 {
            wRight += 1
            sum += nums[wRight]
        }else{
            sum -= nums[wLeft]
            wLeft += 1
        }
        
        if sum >= target {
            minLen = min(minLen, wRight - wLeft + 1)
        }
    }
    
    return minLen == count + 1 ? 0 : minLen
}


func testMinSubArrayLen(){
    print(minSubArrayLen(7, [2,3,1,2,4,3]))
    print(minSubArrayLen(4,  [1,4,4]))
    print(minSubArrayLen(11, [1,1,1,1,1,1,1,1]))
}
