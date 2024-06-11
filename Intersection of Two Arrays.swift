//
//   Intersection of Two Arrays.swift
//  LeetCode
//
//  Created by Khaled Kamal on 11/06/2024.
//

import Foundation
// Intersection of Two Arrays
// https://leetcode.com/problems/intersection-of-two-arrays/description/

func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var result: Set<Int> = []

    nums1.forEach { item in

        if nums2.contains(where: { $0 == item }) {
            result.insert(item)
        }
    }

    return Array(result)
}

func testIntersection() {
    print(intersection([1, 2, 2, 1], [2, 2]))
    print(intersection([4, 9, 5], [9, 4, 9, 8, 4]))
}
