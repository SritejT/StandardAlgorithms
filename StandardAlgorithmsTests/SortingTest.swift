//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Tummuru, Sritej (Coll) on 09/11/2022.
//

import XCTest

class SortingTest: XCTestCase {

    func testBubbleSortWithUnsortedArrayOfIntegersReturnsSortedArray() {
        // arrange - test set-up
        let unsortedArray = [3, 1, 10, 15, 4]
        let expected = [1, 3, 4, 10, 15]
        let sorting = Sorting()
        // act - perform the action we want to test
        let sortedArray = sorting.bubbleSort(data: unsortedArray)
        // assert - check the action behaved as we expected
        XCTAssertEqual(sortedArray, expected)
    }
    
    func testLinearSearchWithTargetIntegerReturnsBoolean() {
        let target = 19
        let expected = true
        let sorting = Sorting()
        let arrayOfInts = [1, 2, 5, 13, 24, 19, 67, 54, 43, 2, 1]
        let isTargetInArray = sorting.linearSearch(elementToFind: target, arrayToSearch: arrayOfInts)
        XCTAssertEqual(isTargetInArray, expected)
    }
    
    func testBinarySearchOnSortedArrayOfIntegersReturnsBoolean() {
        let target = 56
        let expected = true
        let sorting = Sorting()
        let sortedArrayOfInts = [1, 2, 5, 7, 8, 9, 11, 34, 55, 56, 67, 78, 123, 345]
        let isTargetInArray = sorting.binarySearch(elementToFind: target, sortedArrayToSearch: sortedArrayOfInts)
        XCTAssertEqual(isTargetInArray, expected)
    }
    
    func testMergeSortOnUnsortedArrayOfIntegersReturnsSortedArray() {
        let arrayToSort = [1, 3, 2, 5, 6, 4, 2, 9, 10, 23, 3, 34, 46, 79]
        let expected = [1, 2, 2, 3, 3, 4, 5, 6, 9, 10, 23, 34, 46, 79]
        let sorting = Sorting()
        let sortedArray = sorting.mergeSort(unsortedArray: arrayToSort)
        XCTAssertEqual(sortedArray, expected)
    }
    
}
