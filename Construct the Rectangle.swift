//
//  Construct the Rectangle.swift
//  LeetCode
//
//  Created by Khaled Kamal on 01/08/2024.
//

import Foundation
// Construct the Rectangle
// https://leetcode.com/problems/construct-the-rectangle/description/
func constructRectangle(_ area: Int) -> [Int] {
    var list: [Int] = []
    var lastMin = area - 1

    for i in 1 ... area {
        let div = (area / i)
        let sub = i - div
        if area % i == 0, div <= i, lastMin >= sub {
            list = [i, area / i]
            lastMin = sub
        }
    }

    return list
}

func testConstructRectangle() {
    print(constructRectangle(4))
    print(constructRectangle(37))
    print(constructRectangle(122122))
}
