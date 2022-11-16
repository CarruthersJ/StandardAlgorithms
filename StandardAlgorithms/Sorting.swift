//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Carruthers, James (EJNR) on 09/11/2022.
//

import Foundation

class Sorting {
    func bubbleSort(data : [Int]) -> [Int] {
        var unsortedList = data
        let length = unsortedList.count
        for _ in 1 ..< length {
            var j = 0
            while j < length - 1 {
                if unsortedList[j] > unsortedList[j+1] {
                    let tempData = unsortedList[j]
                    unsortedList[j] = unsortedList[j+1]
                    unsortedList[j+1] = tempData
                    }
                j += 1
                }
            }
        return unsortedList
        }
    
    func mergeSort(data : [Int]) -> [Int] {
        let unsortedArray = data
        let arrayLength = unsortedArray.count
        for i in 1 ..< arrayLength
        let halfOfLength = arrayLength/2
        let firstHalf = unsortedArray.prefix(halfOfLength)
        let secondHalf = unsortedArray.suffix(halfOfLength)
        
        return unsortedArray
        }
    
    func linearSearch(data : [Int], desiredValue : Int) -> Bool {
        var found = false
        for i in 0 ..< data.count {
            if data[i] == desiredValue {
                found = true
                break
            }
        }
        return found
    }
    }
