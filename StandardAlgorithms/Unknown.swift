//
//  Unknown.swift
//  StandardAlgorithms
//
//  Created by Carruthers, James (EJNR) on 25/11/2022.
//

import Foundation

class Unknown {
    
    func sumFirstAndLast(array : [Int]) -> Int {
        var sum = 0
        let length = array.count
        if length > 0 {
            if length == 1 {
                let item = array[0]
                sum = item * 2
            } else if length > 1 {
                let firstItem = array[0]
                let lastItem = array[length-1]
                sum = firstItem + lastItem
            }
        }
        return sum
    }
    
    func findMode(sortedArray : [Int]) -> Int {
        let array = sortedArray
        var mode = Int()
        let lengthArray = array.count
        var numberOfOccurrences = 0
        
        for i in 1 ..< lengthArray {
            var j = i + 1
            var occurrences = 0
            while j < lengthArray {
                if array[i] == array[j] {
                    occurrences += 1
                }
                j += 1
            }
            if occurrences > numberOfOccurrences {
                mode = array[i]
                numberOfOccurrences = occurrences
            }
        }
        return mode
    }
}
