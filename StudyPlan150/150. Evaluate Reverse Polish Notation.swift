//
//  150. Evaluate Reverse Polish Notation.swift
//  LeetCode
//
//  Created by Khaled Kamal on 15/11/2023.
//

import Foundation
//150. Evaluate Reverse Polish Notation
//https://leetcode.com/problems/evaluate-reverse-polish-notation/description/?envType=study-plan-v2&envId=top-interview-150

//func evalRPN(_ tokens: [String]) -> Int {
//    var stack : [Int] = []
//    
//    for token in tokens {
//        
//        if let number = Int(token) {
//            stack.append(number)
//        }else{
//            let value1 : Int = stack.removeLast() 
//            let value2 : Int = stack.removeLast()
//            var _result : Int = 0
//            switch token {
//            case "+":
//                _result =  value2 + value1
//                
//            case "-":
//               _result =  value2 - value1
//                
//            case "/":
//                _result =  value2 / value1
//                
//            case "*":
//                _result =  value2 * value1
//                
//            default:
//                break
//            }
//            stack.append(_result)
//        }
//    
//    }
//    return stack.last ?? 0
//}

//MARK: - Optimize Memory
func evalRPN(_ tokens: [String]) -> Int {
    var stack : [Int] = []
    
    for token in tokens {
        
        if let number = Int(token) {
            stack.append(number)
        }else{
            let value1 : Int = stack.removeLast()
            let value2 : Int = stack.removeLast()
            switch token {
            case "+":
                stack.append(value2 + value1)
                
            case "-":
                stack.append(value2 - value1)
                
            case "/":
                stack.append(value2 / value1)
                
            case "*":
                stack.append(value2 * value1)
                
            default:
                break
            }
        }
    
    }
    return stack.last ?? 0
}

func testevalRPN() {
    print(evalRPN(["2","1","+","3","*"]))
    print(evalRPN(["4","13","5","/","+"]))
    print(evalRPN(["10","6","9","3","+","-11","*","/","*","17","+","5","+"]))
}
