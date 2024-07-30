//
//  License Key Formatting.swift
//  LeetCode
//
//  Created by Khaled Kamal on 30/07/2024.
//

import Foundation
// License Key Formatting
// https://leetcode.com/problems/license-key-formatting/description/
/*
 "5F3Z-2e-9-w"
 */

func licenseKeyFormatting(_ s: String, _ k: Int) -> String {
    let notDashString: String = s.replacingOccurrences(of: "-", with: "")
    
    guard !notDashString.isEmpty else {
        return ""
    }
    
    let firstItem = notDashString.count % k == 0 ? k : notDashString.count % k
    
    var result = String(notDashString.prefix(firstItem))
    
    var start = notDashString.index(notDashString.startIndex, offsetBy: firstItem)
    while start < notDashString.endIndex {
        result += "-"
        let end = notDashString.index(start, offsetBy: k, limitedBy: notDashString.endIndex) ?? notDashString.endIndex
        result += notDashString[start ..< end]
        start = end
    }
    
    return result.uppercased()
}

func testLicenseKeyFormatting() {
    print(licenseKeyFormatting("5F3Z-2e-9-w", 4))
    print(licenseKeyFormatting("2-5g-3-J-i", 2))
    print(licenseKeyFormatting("2-4A0r7-4k", 4))
    print(licenseKeyFormatting("---", 3))
}
