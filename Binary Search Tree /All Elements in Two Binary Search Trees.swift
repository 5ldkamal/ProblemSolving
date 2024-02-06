//
//   All Elements in Two Binary Search Trees.swift
//  LeetCode
//
//  Created by Khaled Kamal on 06/02/2024.
//

import Foundation
// All Elements in Two Binary Search Trees
// https://leetcode.com/problems/all-elements-in-two-binary-search-trees/
func getAllElements(_ root1: TreeNode?, _ root2: TreeNode?) -> [Int] {
    func inOrder(root: TreeNode?) -> [Int] {
        guard let root = root else {
            return []
        }
        return inOrder(root: root.left) + [root.val] + inOrder(root: root.right)
    }
    
    let list1: [Int] = inOrder(root: root1)
    let list2: [Int] = inOrder(root: root2)
    
    var merged: [Int] = []
    var i = 0
    var j = 0
    
    while i < list1.count, j < list2.count {
        if list1[i] == list2[j] {
            merged.append(list1[i])
            merged.append(list2[j])
            i += 1
            j += 1
        } else if list1[i] < list2[j] {
            merged.append(list1[i])
            i += 1
        } else {
            merged.append(list2[j])
            j += 1
        }
        print(merged)
    }
    
    if i < list1.count {
        merged.append(contentsOf: Array(list1[i..<list1.count]))
    }
    
    if j < list2.count {
        merged.append(contentsOf: Array(list2[j..<list2.count]))
    }
    
    return merged
}
