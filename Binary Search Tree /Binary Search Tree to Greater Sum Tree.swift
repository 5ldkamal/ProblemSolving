//
//  Binary Search Tree to Greater Sum Tree.swift
//  LeetCode
//
//  Created by Khaled Kamal on 05/02/2024.
//

import Foundation
// Binary Search Tree to Greater Sum Tree
// https://leetcode.com/problems/binary-search-tree-to-greater-sum-tree/description/

func bstToGst(_ root: TreeNode?) -> TreeNode? {
    
    var total = 0
    
    func add(root: TreeNode?) {
        guard let root = root else {
            return
        }
        
        add(root: root.right)
        
        root.val += total
        total = root.val
        
        add(root: root.left)
    }
    
    add(root: root)
    
    return root
}
