//
//  Maximum Binary Tree.swift
//  LeetCode
//
//  Created by Khaled Kamal on 02/02/2024.
//

import Foundation

// Maximum Binary Tree
// https://leetcode.com/problems/maximum-binary-tree/description/

func constructMaximumBinaryTree(_ nums: [Int]) -> TreeNode? {
    if nums.isEmpty {
        return nil
    }

    func getMaxIndex() -> Int {
        var maxIndex = 0
        var max = nums[0]

        for i in 1 ..< nums.count {
            if nums[i] > max {
                max = nums[i]
                maxIndex = i
            }
        }
        return maxIndex
    }

    let maxIndex = getMaxIndex()
    let root = TreeNode(nums[maxIndex])
    root.left = constructMaximumBinaryTree(Array(nums[0 ..< maxIndex]))
    root.right = constructMaximumBinaryTree(Array(nums[maxIndex + 1 ..< nums.count]))
    return root
}

func testConstructMaximumBinaryTree() {
    print(constructMaximumBinaryTree([3, 2, 1, 6, 0, 5])?.left?.val)

    print(constructMaximumBinaryTree([3, 2, 1])?.right?.val)
}
