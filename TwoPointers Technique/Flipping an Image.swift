//
//   Flipping an Image.swift
//  LeetCode
//
//  Created by Khaled Kamal on 23/01/2024.
//

import Foundation

// Flipping an Image
//https://leetcode.com/problems/flipping-an-image/
func flipAndInvertImage(_ image: [[Int]]) -> [[Int]] {
    var updatedImage = image
    
    for i in 0 ..< updatedImage.count {
        var left = 0
        var count = updatedImage[i].count
        var right = count - 1
        
        while left < right {
            // Flip
            updatedImage[i].swapAt(left, right)
            
            // Invert
            updatedImage[i][left] = updatedImage[i][left] == 0 ? 1 : 0
            updatedImage[i][right] = updatedImage[i][right] == 0 ? 1 : 0
            
            left += 1
            right -= 1
        }
        
        if updatedImage[i].count % 2 == 1 {
            updatedImage[i][count/2] = updatedImage[i][count / 2] == 0 ? 1 : 0
        }
    }
    
    return updatedImage
}

func testFlipAndInvertImage() {
    print(flipAndInvertImage([[1, 1, 0], [1, 0, 1], [0, 0, 0]]))
    print("=====================================================")
    print(flipAndInvertImage([[1,1,0,0],[1,0,0,1],[0,1,1,1],[1,0,1,0]]))
}
