//
//  Remove Duplicates from Sorted Array II.swift
//  LeetCode
//
//  Created by Khaled Kamal on 25/10/2023.
//

import Foundation
//Remove Duplicates from Sorted Array II
//https://leetcode.com/problems/remove-duplicates-from-sorted-array-ii/description/?envType=study-plan-v2&envId=top-interview-150

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var copy = 1
    var iMoving = 1
    
    while iMoving < nums.count {
        if nums[iMoving] == nums[iMoving - 1] {
            copy += 1
        }else{
            copy = 1
        }
        
        if copy > 2 {
            nums.remove(at: iMoving)
        }else{
            iMoving += 1
        }
    }
    
    return nums.count
}

func testRemoveDuplicates(){
    var items1 = [1,1,1,2,2,3]
    print(removeDuplicates(&items1))
    
    var items2 = [0,0,1,1,1,1,2,3,3]
    print(removeDuplicates(&items2))
}
