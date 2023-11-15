//
//  155. Min Stack.swift
//  LeetCode
//
//  Created by Khaled Kamal on 15/11/2023.
//

import Foundation
//155. Min Stack
//https://leetcode.com/problems/min-stack/description/?envType=study-plan-v2&envId=top-interview-150


class MinStack {
    private var stack: [Int] = []
    
    init() {}
    
    func push(_ val: Int) {
        stack.append(val)
    }
    
    func pop() {
        if !stack.isEmpty {
            stack.removeLast()
        }
    }
    
    func top() -> Int? {
        stack.last
    }
    
    func getMin() -> Int? {
        return stack.min()
    }
}
