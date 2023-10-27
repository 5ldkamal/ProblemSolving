import Foundation
//Reverse Words in a String

func reverseWords(_ s: String) -> String {
    var reservedString : String = ""
    let sAsList = s.components(separatedBy: " ").filter({!$0.isEmpty}).reversed()
    print(sAsList)
    reservedString = sAsList.joined(separator: " ")
    return reservedString
}

func testReservedWords() {
    print(reverseWords("the sky is blue"))
    print(reverseWords("  hello world  "))
}
