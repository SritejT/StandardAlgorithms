//
//  Unknown.swift
//  StandardAlgorithmsTests
//
//  Created by Tummuru, Sritej (Coll) on 25/11/2022.
//

import XCTest

class UnknownTest: XCTestCase {

    func testCalculateSumOfFirstAndLastItemsInIntegerArrayReturnsInt() {
        let arrayToTest = [3, 2, 4, 6, 5, 87, 23, 45]
        let expected = 48
        let unknownAlgorithms = UnknownAlgorithms()
        let returnedInt = unknownAlgorithms.sumOfFirstAndLast(arrayOfInts: arrayToTest)
        XCTAssertEqual(returnedInt, expected)
    }
    
    func testFindModeOfArrayOfIntegersReturnsInt() {
        let arrayToTest = [3, 3, 1, 1, 1, 4, 5, 7, 7, 7, 7, 3, 9, 9]
        let expected = 7
        let unknownAlgorithms = UnknownAlgorithms()
        let returnedInt = unknownAlgorithms.findModeOfArray(arrayOfInts: arrayToTest)
        XCTAssertEqual(returnedInt, expected)
    }
    
    func testFindSecondSmallestValueOfArrayOfIntegersReturnsInt() {
        let arrayToTest = [2, 3, 4, 5, 6, 7, 8, 9, 10]
        let expected = 3
        let unknownAlgorithms = UnknownAlgorithms()
        let returnedInt = unknownAlgorithms.findSecondSmallestElement(arrayOfInts: arrayToTest)
        XCTAssertEqual(returnedInt, expected)
    }

}
