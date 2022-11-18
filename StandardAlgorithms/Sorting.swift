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
    
    func merge(array1 : [Int], array2 : [Int]) -> [Int] {
        var sortedArray = [Int]()
        var indexArray1 = 0
        var indexArray2 = 0
        while indexArray1 < array1.count && indexArray2 < array2.count {
            if array1[indexArray1] > array2[indexArray2] {
                sortedArray.append(array2[indexArray2])
                indexArray2 += 1
            } else if array1[indexArray1] < array2[indexArray2] {
                sortedArray.append(array1[indexArray1])
                indexArray1 += 1
            } else {
                sortedArray.append(array1[indexArray1])
                sortedArray.append(array2[indexArray2])
                indexArray1 += 1
                indexArray2 += 1
            }
        }
        while indexArray1 < array1.count {
            sortedArray.append(array1[indexArray1])
            indexArray1 += 1
        }
        while indexArray2 < array2.count {
            sortedArray.append(array2[indexArray2])
            indexArray2 += 1
        }
        return sortedArray
    }
    
    func mergeSort(data : [Int]) -> [Int] {
        guard data.count > 1 else {
            return data
        }
        let midpoint = data.count / 2
            let firstHalf = mergeSort(data: Array(data[0 ..< midpoint]))
            let secondHalf = mergeSort(data: Array(data[midpoint ..< data.count]))
            return merge(array1: firstHalf, array2: secondHalf)
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
    
    func binarySearch(sortedArray: [Int], valueToFind: Int) -> Bool {
        var array = sortedArray
        var found = false
        var endOfList = false
        
        while found == false && endOfList == false {
            let length = array.count
            if length == 1 {
                endOfList = true
            }
            let midpoint = (length / 2)
            if valueToFind < array[midpoint] {
                array.removeLast(midpoint)
            } else if valueToFind > array[midpoint] {
                array.removeFirst(midpoint)
            } else if valueToFind == array[midpoint] {
                found = true
            }
            
        }
        
        return found
    }
}
