//
//  Minimum Distance Between BST Nodes.swift
//  LeetCode
//
//  Created by Khaled Kamal on 04/02/2024.
//

import Foundation
// Minimum Distance Between BST Nodes
// https://leetcode.com/problems/minimum-distance-between-bst-nodes/description/

func minDiffInBST(_ root: TreeNode?) -> Int {
    
    // Convert to InOrderTravers
    func getInOrder(root: TreeNode?) -> [Int] {
        guard let root = root else {
            return []
        }
        return getInOrder(root: root.left) + [root.val] + getInOrder(root: root.right)
    }
    
    let elements = getInOrder(root: root)
    
    var _min = elements[1]  - elements[0]
    
    for i in 2..<elements.count {
        _min = min(_min, elements[i] - elements[i - 1])
    }
    
    
    return _min
}
