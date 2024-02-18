//
//  Ugly Number II.swift
//  LeetCode
//
//  Created by Khaled Kamal on 18/02/2024.
//

import Foundation
// Ugly Number II
// https://leetcode.com/problems/ugly-number-ii/description/

/*
 Not Optimize 
 func nthUglyNumber(_ n: Int) -> Int {
     var list = [1]
     var index = 2
     while list.count < n {
         if isUgly(num: index) {
             list.append(index)
         }
         index += 1
     }
    
     func isUgly(num: Int) -> Bool {
         var num = num
        
         while num % 2 == 0 {
             num /= 2
         }
        
         while num % 3 == 0 {
             num /= 3
         }
        
         while num % 5 == 0 {
             num /= 5
         }
         return num == 1
     }
    
     return list.last ?? 1
 }
  */

func nthUglyNumber(_ n: Int) -> Int {
    var ugly :[Int] = [1]
    
    var index2 = 0, index3 = 0, index5 = 0
    var nextMultipleOf2 = 2, nextMultipleOf3 = 3, nextMultipleOf5 = 5
    
    for i in 1 ..< n {
        
        let nextUgly = min(nextMultipleOf2, nextMultipleOf3, nextMultipleOf5)
        ugly.append( nextUgly)
        
        if nextUgly == nextMultipleOf2 {
            index2 += 1
            nextMultipleOf2 = ugly[index2] * 2
        }
        if nextUgly == nextMultipleOf3 {
            index3 += 1
            nextMultipleOf3 = ugly[index3] * 3
        }
        if nextUgly == nextMultipleOf5 {
            index5 += 1
            nextMultipleOf5 = ugly[index5] * 5
        }
    }
    
    return ugly.last ?? 0
}

func testNthUglyNumber() {
    print(nthUglyNumber(10))
    print(nthUglyNumber(1))
    print(nthUglyNumber(11))
    print(nthUglyNumber(963))
}

/*
 
 1  2  3  4  5  6   8  9  10  12
 
 */
