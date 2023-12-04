//
//  35. Search Insert Position.swift
//  LeetCode
//
//  Created by Khaled Kamal on 04/12/2023.
//

import Foundation

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    
    guard nums.count > 0 else{
        return 0
    }
    
    var upper:Int = nums.count - 1
    var lower:Int = 0
    
    if  target > nums[upper] {
        return nums.count
    }
    
    while lower < upper {
        let mid = lower + (upper - lower)/2
        if nums[mid] == target {
            return mid
        }else if nums[mid] > target{
            upper = mid
        }else{
            lower = mid + 1
        }
    }
    
    return lower
}

func testSearchInsert() {
    print(searchInsert([1,3,5,6], 5))
    print(searchInsert([1,3,5,6], 2))
    print(searchInsert([1,3,5,6], 7))
}
