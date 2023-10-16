import Foundation
//Remove One Element to Make the Array Strictly Increasing
//https://leetcode.com/problems/remove-one-element-to-make-the-array-strictly-increasing/description/
func canBeIncreasing(_ nums: [Int]) -> Bool {

    for i in 0..<nums.count {
        var sub = nums
        sub.remove(at: i)
        
        if isSorted(list: sub) {
            return true
        }
    }
    
    func isSorted(list: [Int])-> Bool {
        guard list.count > 1 else{
            return true
        }
        
        var min = list[0]
        for i in 1..<list.count {
            
            if min < list[i] {
                min = list[i]
            }else{
                return false
            }
        }
        
        return true
    }
    
    
    return false
}
