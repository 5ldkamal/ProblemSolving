//
//  Long Pressed Name.swift
//  LeetCode
//
//  Created by Khaled Kamal on 25/01/2024.
//

import Foundation

func isLongPressedName(_ name: String, _ typed: String) -> Bool {
    if name.count > typed.count {
        return false
    }

    var leftName = name.startIndex
    var rightName = name.index(before: name.endIndex)
    var leftType = typed.startIndex

    while leftType < typed.endIndex {
        if leftName < name.endIndex, name[leftName] == typed[leftType] {
            leftType = typed.index(after: leftType)
            leftName = name.index(after: leftName)

        } else {
            if leftType == typed.startIndex {
                return false
            }

            let prevIndex = typed.index(before: leftType)
            if typed[prevIndex] == typed[leftType] {
                leftType = typed.index(after: leftType)
            } else {
                return false
            }
        }
    }

    return typed.endIndex == leftType && name.endIndex == leftName
}

func testIsLongPressedName() {
    print(isLongPressedName("alex", "aaleex"))
    print(isLongPressedName("saeed", "ssaaedd"))
    print(isLongPressedName("a", "b"))
    print(isLongPressedName("alex", "aaleexa"))
    print(isLongPressedName("vtkgn", "vttkgnn"))
}
