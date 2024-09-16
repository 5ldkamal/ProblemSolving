//
//  Divide Two Integers.swift
//  LeetCode
//
//  Created by Khaled Kamal on 11/01/2023.
//

import Foundation
// Divide Two Integers

// func divide(_ dividend: Int, _ divisor: Int) -> Int {
//    var _dividend = dividend > 0 ? dividend : dividend * -1
//    var _divisor  = divisor > 0  ? divisor  : divisor  * -1
//
//    var result = 0
//    while _dividend >= _divisor {
//        _dividend = _dividend - _divisor
//        result += 1
//
//    }
//
//    if divisor < 0 {
//        result = result * -1
//    }
//
//    if dividend < 0 {
//        result = result * -1
//    }
//
//    return result
// }

// func divide(_ dividend: Int, _ divisor: Int) -> Int {
//    var dividend = dividend
//    var divisor  = divisor
//    var result = 0
//    while dividend >= divisor {
//        dividend = dividend - divisor
//        result += 1
//
//    }
//
//    return result
// }

func divide(_ dividend: Int, _ divisor: Int) -> Int {
    var result = dividend / divisor

    let power = pow(2.0, 31.0)

    if result > Int(power) - 1 {
        return Int(power) - 1
    }

    let powerMin = pow(-2.0, 31.0)
    if result < Int(powerMin) {
        return Int(powerMin)
    }
    
    return result
}

func testDivide() {
    print(divide(-2147483648, -1))
    print(divide(10, 3))
}

/*
 10 - 3 = 7
 7 - 3 = 4
 4 - 3 = 1
 */
