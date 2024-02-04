//
//  Two Sum IV - Input is a BST.swift
//  LeetCode
//
//  Created by Khaled Kamal on 27/01/2024.
//

import Foundation
// Two Sum IV - Input is a BST
// https://leetcode.com/problems/two-sum-iv-input-is-a-bst/description/
func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
    // Convert TreeNode to inorder array
    func inOrderList(root: TreeNode?) -> [Int] {
        guard let root = root else {
            return []
        }
        return inOrderList(root: root.left) + [root.val] + inOrderList(root: root.right)
    }
    
    var elements = inOrderList(root: root)
    
    // Check using Two pointers
    var left = 0
    var right = elements.count - 1
    
    while left < right {
        var currentValue = elements[left] +  elements[right]
        
        if currentValue == k {
            return true
        }else if k < currentValue {
            right -= 1
        }else{
            left += 1
        }
    }
    
    return false
}
