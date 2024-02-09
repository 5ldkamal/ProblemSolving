// Find the Winner of the Circular Game
// https://leetcode.com/problems/find-the-winner-of-the-circular-game/description/
func findTheWinner(_ n: Int, _ k: Int) -> Int {
    var list: [Int] = Array(1 ..< n + 1)
    
    var lastIndex = 0
    
    while list.count > 1 {
        var removeIndex = (lastIndex + k - 1) % (list.count)
        list.remove(at: removeIndex)
        
        lastIndex = removeIndex
    }
    
    return list.last ?? 0
}
