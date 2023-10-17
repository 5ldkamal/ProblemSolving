func frequencySort(_ nums: [Int]) -> [Int] {
    var list : [[Int]] = []
    
    let nums = nums.sorted(by: {$0 > $1})
    
    var movingIndex = 0
    
    while movingIndex < nums.count {
        
        let value = nums[movingIndex]
        
        var sub: [Int] = [value]
        
        for i in (movingIndex + 1)..<nums.count {
            if value == nums[i] {
                sub.append(nums[i])
            }else{
                break
            }
        }
        
        movingIndex += sub.count
        list.append(sub)
    }
    

    list = list.sorted(by:{$0.count < $1.count})
    
    return list.flatMap({$0})
}
