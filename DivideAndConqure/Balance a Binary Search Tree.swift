//
//  Balance a Binary Search Tree.swift
//  LeetCode
//
//  Created by Khaled Kamal on 04/02/2024.
//

import Foundation
// Balance a Binary Search Tree
// https://leetcode.com/problems/balance-a-binary-search-tree/description/

func balanceBST(_ root: TreeNode?) -> TreeNode? {
    return sortedBST(list: getList(root: root))
}

func sortedBST(list:[TreeNode]) -> TreeNode? {
    guard  !list.isEmpty else {
        return nil
    }
    let mid = list.count / 2
    let newRoot = list[mid]
    
    newRoot.left = sortedBST(list: Array(list[0..<mid]))
    newRoot.right =  sortedBST(list: Array(list[mid + 1..<list.count]))
    return newRoot
}

private func getList(root: TreeNode?) -> [TreeNode] {
    guard let node = root else {
        return []
    }
    return getList(root: node.left) + [node] + getList(root: node.right)
}
