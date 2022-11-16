//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Tummuru, Sritej (Coll) on 09/11/2022.
//

import Foundation

class Sorting {
    
    func bubbleSort(data: [Int]) -> [Int] {
        var newArray = data
        var swaps = 1
        var temp = 0
        while swaps != 0 {
            swaps = 0
            for i in 0..<newArray.count-1 {
                if newArray[i] > newArray[i+1] {
                    temp = newArray[i+1]
                    newArray[i+1] = newArray[i]
                    newArray[i] = temp
                    swaps += 1
                }
            }
        }
        return newArray
    }
    
    func linearSearch(elementToFind: Int, arrayToSearch: [Int]) -> Bool {
        
        for i in 0..<arrayToSearch.count {
            if arrayToSearch[i] == elementToFind {
                return true
            }
        }
        
        return false
    }
    
    func binarySearch(elementToFind: Int, sortedArrayToSearch: [Int]) -> Bool {
        var firstIndex = 0
        var lastIndex = sortedArrayToSearch.count-1
        while firstIndex <= lastIndex {
            var middleIndex = (firstIndex + lastIndex)  / 2
            if sortedArrayToSearch[middleIndex] < elementToFind {
                firstIndex = middleIndex + 1
            } else if sortedArrayToSearch[middleIndex] > elementToFind {
                lastIndex = middleIndex - 1
            } else {
                return true
            }
        }
        return false
    }
    
    func mergeSort(unsortedArray: [Int]) -> [Int] {
        
    }
}
