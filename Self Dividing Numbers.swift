//
//  Self Dividing Numbers.swift
//  LeetCode
//
//  Created by Khaled Kamal on 12/08/2024.
//

import Foundation
// Self Dividing Numbers
// https://leetcode.com/problems/self-dividing-numbers/description/

func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
    var list: [Int] = []
    
    for i in left ... right {
        if isDividing(num: i) {
            list.append(i)
        }
    }
    
    func isDividing(num: Int) -> Bool {
        if num % 10 == 0 {
            return false
        }
        var number = num
        
        while number > 1 {
            let rad = number % 10
            
            if  rad == 0 || num % rad != 0 {
                return false
            }
            
            number = number / 10
        }
        
        return true
    }
    
    return list
}

func testSelfDividingNumbers() {
    print(selfDividingNumbers(1, 22))
    print(selfDividingNumbers(47, 85))
    print(selfDividingNumbers(66, 708))
}
