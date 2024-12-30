//
//  2507. Smallest Value After Replacing With Sum of Prime Factors.swift
//  LeetCode
//
//  Created by Khaled Kamal on 31/12/2024.
//

import Foundation
//2507. Smallest Value After Replacing With Sum of Prime Factors


private func primeFactors(_ n: Int) -> [Int] {
    guard n > 1 else { return [] }
    var primes: [Int] = []
    var number = n
    for i in 2...number {
        while number % i == 0 {
            primes.append(i)
            number /= i
        }
    }
   return primes
}

private func isPrime(_ n: Int) -> Bool {
    if n < 2 { return false }
    for i in 2 ..< n {
        if n % i == 0 { return false }
    }
    return true
}

func smallestValue(_ n: Int) -> Int {
    var n = n
    while !isPrime(n) {
        let sum  = primeFactors(n).reduce(0, +)
        if sum == n {
            return n
        }
        n =  sum
    }
    
    return n
}

func testSmallestValue() {
//    print(smallestValue(15))
//    print(smallestValue(3))
    print(smallestValue(4))
}
