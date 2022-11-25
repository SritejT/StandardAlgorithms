//
//  SearchingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Tummuru, Sritej (Coll) on 25/11/2022.
//

import XCTest

class SearchingTest: XCTestCase {

    func testLinearSearchWithTargetIntegerReturnsBoolean() {
        let target = 19
        let expected = true
        let searching = Searching()
        let arrayOfInts = [1, 2, 5, 13, 24, 19, 67, 54, 43, 2, 1]
        let isTargetInArray = searching.linearSearch(elementToFind: target, arrayToSearch: arrayOfInts)
        XCTAssertEqual(isTargetInArray, expected)
    }
    
    func testBinarySearchOnSortedArrayOfIntegersReturnsBoolean() {
        let target = 56
        let expected = true
        let searching = Searching()
        let sortedArrayOfInts = [1, 2, 5, 7, 8, 9, 11, 34, 55, 56, 67, 78, 123, 345]
        let isTargetInArray = searching.binarySearch(elementToFind: target, sortedArrayToSearch: sortedArrayOfInts)
        XCTAssertEqual(isTargetInArray, expected)
    }
    

}
