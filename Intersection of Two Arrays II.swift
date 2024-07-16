//
//  Intersection of Two Arrays II.swift
//  LeetCode
//
//  Created by Khaled Kamal on 16/07/2024.
//

import Foundation
// Intersection of Two Arrays II
// https://leetcode.com/problems/intersection-of-two-arrays-ii/description/

func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var result: [Int] = []
    var _num2 = nums2
    
    for num in nums1 {
        if let index = _num2.firstIndex(where: {$0 == num}) {
            result.append(num)
            _num2.remove(at: index)
        }
    }
    
    return result
}

func testIntersect() {
    print(intersect([1, 2, 2, 1], [2, 2]))
    print(intersect([4, 9, 5], [9, 4, 9, 8, 4]))
    print(intersect([1,2,2,1], [2]))
}
