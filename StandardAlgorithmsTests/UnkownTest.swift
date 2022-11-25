//
//  UnkownTest.swift
//  StandardAlgorithmsTests
//
//  Created by Carruthers, James (EJNR) on 25/11/2022.
//

import XCTest

class UnkownTest: XCTestCase {

    func testForAddingFirstAndLastItemsOfAnIntegerArray() {
        let integerList = [Int]()
        let unknown = Unknown()
        
        let sum = unknown.sumFirstAndLast(array : integerList)
        let expected = 0
        
        XCTAssertEqual(sum, expected)
    }
    
    func testCalculateModeOfSortedArray() {
        let sortedArray = [0,1,1,1,2,2,3,3,4,4,4,5,5,5,5,6]
        let expected = 5
        let unknown = Unknown()
        
        let mode = unknown.findMode(sortedArray : sortedArray)
        XCTAssertEqual(expected, mode)
    }

}
