import Foundation
//Peak Index in a Mountain Array
//https://leetcode.com/problems/peak-index-in-a-mountain-array/description/

func peakIndexInMountainArray(_ arr: [Int]) -> Int {
    
    var left = 0
    var right = arr.count - 1
    
    while left < right {
        let mid = left + (right - left) / 2
        if arr[mid] > arr[mid + 1] {
            right = mid
        }else{
            left = mid + 1
        }
    }
    
    return left
}
