//
//  Summary Ranges.swift
//  LeetCode
//
//  Created by Khaled Kamal on 09/02/2024.
//

import Foundation
// Summary Ranges
// https://leetcode.com/problems/summary-ranges/description/

func summaryRanges(_ nums: [Int]) -> [String] {
    var start = 0
    var end = 0
    var strings: [String] = []

    while end < nums.count {
        if end + 1 < nums.count,
           nums[end + 1] - nums[end] == 1
        {
            end += 1

        } else {
            if end == start {
                strings.append("\(nums[start])")
            } else {
                let value = "\(nums[start])->\(nums[end])"
                strings.append(value)
            }
            start = end + 1
            end = start
        }
    }

    return strings
}

func testSummaryRanges() {
    print(summaryRanges([0, 1, 2, 4, 5, 7]))

    print(summaryRanges([0, 2, 3, 4, 6, 8, 9]))
}

/*

 var value: String = start == end ? "\(nums[start])" : "\(nums[start])->\(nums[end])"
 */
