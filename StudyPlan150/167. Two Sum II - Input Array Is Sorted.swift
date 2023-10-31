//167. Two Sum II - Input Array Is Sorted
//https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/description/?envType=study-plan-v2&envId=top-interview-150

func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    var right: Int = numbers.count - 1
    var left = 0
    
    while left < right {
        var total = numbers[left] + numbers[right]
        if total > target {
            right -= 1
        }else if total < target {
            left += 1
        }else {
            return [left + 1,right + 1]
        }
    }
    return []
}

func testTwoSum() {
    print(twoSum([2,7,11,15], 9))
    print(twoSum([2,3,4], 6))
}
