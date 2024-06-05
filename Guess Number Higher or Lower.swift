
func guess(_ num: Int) -> Int {
    //// Some calculations
    return 0 // default
}

func guessNumber(_ n: Int) -> Int {
    var upper: Int = n
    var lower = 1
    
    while lower <= upper {
        // index of guessed one
        let mid = lower + (upper - lower) / 2
        
        // Number which i guessed
        var num = guess(mid)
        
        /*
         -1: Your guess is higher than the number I picked (i.e. num > pick).
         1: Your guess is lower than the number I picked (i.e. num < pick).
         0: your guess is equal to the number I picked (i.e. num == pick).
         */
        
        if num == 0 {
            return mid
        } else if num < 0 {
            upper = mid - 1
        } else {
            lower = mid + 1
        }
    }
    
    return -1
}
