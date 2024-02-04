//
//  Convert Sorted Array to Binary Search Tree.swift
//  LeetCode
//
//  Created by Khaled Kamal on 27/01/2024.
//

import Foundation
// Convert Sorted Array to Binary Search Tree
// https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree/description/

func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
    
    //Solution 1
    guard !nums.isEmpty else {
        return nil
    }
    let mid = nums.count / 2
    let root = TreeNode(nums[mid])

    root.left = sortedArrayToBST(Array(nums[0..<mid]))
    root.right = sortedArrayToBST(Array(nums[(mid + 1)..<nums.count]))

    return root
}

// Solution 2
extension TreeNode {
    convenience init(list: [Int]) {
        self.init(list[0])
    }

    func insertValue(_ value: Int) {
        if value < self.val {
            if let _left = left {
                _left.insert(newValue: value)
            } else {
                self.left = TreeNode(value)
            }

        } else {
            if let _right = right {
                _right.insert(newValue: value)
            } else {
                self.right = TreeNode(value)
            }
        }
    }
}
