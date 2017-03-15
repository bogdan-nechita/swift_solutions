//
//  BinaryGap.swift
//  
//
//  Created by Bogdan Nechita on 3/14/17.
//
//

import Foundation

// Binary Gap

/*
A binary gap within a positive integer N is any maximal sequence of consecutive zeros that is surrounded by ones at both ends in the binary representation of N.

For example, number 9 has binary representation 1001 and contains a binary gap of length 2. The number 529 has binary representation 1000010001 and contains two binary gaps: one of length 4 and one of length 3. The number 20 has binary representation 10100 and contains one binary gap of length 1. The number 15 has binary representation 1111 and has no binary gaps.

Write a function:

public func solution(_ N : Int) -> Int
that, given a positive integer N, returns the length of its longest binary gap. The function should return 0 if N doesn't contain a binary gap.

For example, given N = 1041 the function should return 5, because N has binary representation 10000010001 and so its longest binary gap is of length 5.

Assume that:

N is an integer within the range [1..2,147,483,647].
Complexity:

expected worst-case time complexity is O(log(N));
expected worst-case space complexity is O(1).
*/

public func solution(_ N : Int) -> Int {
    // Binary representation of the number.
    let binaryArray = String(N, radix: 2).characters
    
    var currentCount = 0
    var longestCount = 0
    
    // Start the count when getting to a 0, end the count when getting to a 1.
    // Only update the largestCount when there is a trailing 1 to the sequence of 0s.
    for value in binaryArray {
        if value == "0" {
            currentCount += 1
        } else {
            longestCount = max(currentCount, longestCount)
            currentCount = 0
        }
    }
    
    return longestCount
}
