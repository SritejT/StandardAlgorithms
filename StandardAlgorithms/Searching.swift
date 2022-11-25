//
//  Searching.swift
//  StandardAlgorithms
//
//  Created by Tummuru, Sritej (Coll) on 25/11/2022.
//

import Foundation

class Searching {
    
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
            let middleIndex = (firstIndex + lastIndex)  / 2
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
}
