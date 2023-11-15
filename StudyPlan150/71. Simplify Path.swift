//
//  Simplify Path.swift
//  LeetCode
//
//  Created by Khaled Kamal on 14/11/2023.
//

import Foundation
//71. Simplify Path
//https://leetcode.com/problems/simplify-path/description/?envType=study-plan-v2&envId=top-interview-150

func simplifyPath(_ path: String) -> String {
    var stack: [String]  = []
    let paths : [String] = path.components(separatedBy: "/")
    print(paths)
    for path in paths {
        if path == "."  || path.isEmpty {
            continue
        }else if path == ".." {
            if !stack.isEmpty {
                stack.removeLast()
            }
        }else{
            stack.append(path)
        }
    }
    
    return "/" + stack.joined(separator: "/")
}

func  testSimplifyPath() {
    print(simplifyPath("/home/"))
    print(simplifyPath("/../"))
    print(simplifyPath("/home//foo/"))
    print(simplifyPath("/a/./b/../../c/"))   
}
