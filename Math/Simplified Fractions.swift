//
//  Simplified Fractions.swift
//  LeetCode
//
//  Created by Khaled Kamal on 18/10/2024.
//

import Foundation
func simplifiedFractions(_ n: Int) -> [String] {
    guard n > 1 else{
        return []
    }
    func gcd(a: Int, b: Int) -> Int {
        if b == 0 {
            return a
        }
        return gcd(a: b, b: a % b)
    }
    
    var list: [String] = []

    for i in 2 ... n {
        for j in 1 ... i {
            if gcd(a: j, b: i) == 1 {
                list.append("\(j)/\(i)")
            }
        }
    }

    return list
}

func testSimplifiedFractions() {
    print(simplifiedFractions(2))
    print(simplifiedFractions(3))
    print(simplifiedFractions(4))
}
