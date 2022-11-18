//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Carruthers, James (EJNR) on 09/11/2022.
//

import XCTest

class SortingTest: XCTestCase {
    
    func testBubbleSortWithUnsortedArrayOfIntegersReturnsSortedArray() {
        measure {
            let unsortedArray = [3,1,10,15,4]
            let expected = [1,3,4,10,15]
            let sorting = Sorting()
            
            let sortedArray = sorting.bubbleSort(data: unsortedArray)
            XCTAssertEqual(sortedArray, expected)
        }
        
    }
        
    func testMergeSortWithUnsortedArrayOfIntegersReturnsSortedArray() {
        measure {
            let unsortedArray = [7,2,9,3,6,0,5,4]
            let expected = [0,2,3,4,5,6,7,9]
            let sorting = Sorting()
            
            let sortedArray = sorting.mergeSort(data : unsortedArray)
            XCTAssertEqual(sortedArray, expected)
        }
    }
    
    func testLinearSearchToFindValue() {
        measure {
            let arrayOfIntegers = [2,5,6,7,8,34,3,27,4,18]
                    let valueToFind = 5
                    let sorting = Sorting()
                        
                    let linearTest = sorting.linearSearch(data: arrayOfIntegers, desiredValue: valueToFind)
                    XCTAssert(linearTest)
        }
    }
    
    func testBinarySearchToFindValue() {
        measure {
            let sortedArray = [1,2,3,4,5,6,7,8,9,10]
            let valueToFind = 2
            let sorting = Sorting()
            
            let binarySearch = sorting.binarySearch(sortedArray: sortedArray, valueToFind: valueToFind)
            XCTAssert(binarySearch)
        }
        
    }
    
    func testInsertionSortWithUnsortedArrayOfIntegersToReturnSortedArray() {
        measure {
            let unsortedArray = [2,5,3,18,6,29,0]
            let expected = [0,2,3,5,6,18,29]
            let sorting = Sorting()
                  
            let sortedArray = sorting.insertionSort(unsortedArray: unsortedArray)
            XCTAssertEqual(sortedArray, expected)
        }
      
    }
    func testQuickSortWithUnsortedArrayOfIntegersToReturnSortedArray() {
        measure {
            let unsortedArray = [3,6,8,2,5,1,10,9]
            let expected = [1,2,3,5,6,8,9,10]
            let sorting = Sorting()
            
            let sortedArray = sorting.quickSort(unsortedArray: unsortedArray)
            XCTAssertEqual(sortedArray, expected)
        }
    }
    }
    
