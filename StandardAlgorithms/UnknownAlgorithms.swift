//
//  UnknownAlgorithms.swift
//  StandardAlgorithms
//
//  Created by Tummuru, Sritej (Coll) on 25/11/2022.
//

import Foundation

class UnknownAlgorithms {
    
    func sumOfFirstAndLast(arrayOfInts: [Int]) -> Int {
        let firstInt = arrayOfInts[0]
        let lastInt = arrayOfInts[arrayOfInts.count - 1]
        return firstInt + lastInt
    }
    
    func findModeOfArray(arrayOfInts: [Int]) -> Int {
        var frequencies: [Int: Int] = [:]
        for num in arrayOfInts {
            if frequencies.keys.contains(num) {
                frequencies[num]! += 1
            } else {
                frequencies[num] = 1
            }
        }
        
        let mode = frequencies.max {a, b in a.value < b.value}
        return mode!.key
    }
    
    func findSecondSmallestElement(arrayOfInts: [Int]) -> Int {
        
        var min = arrayOfInts[0]
        
        for i in 1..<arrayOfInts.count {
            if arrayOfInts[i] < min {
                min = arrayOfInts[i]
            }
        }
        
        let indexToSkip = arrayOfInts.firstIndex(of: min)!
        
        var secondMin: Int
        
        if indexToSkip == 0 {
            secondMin = arrayOfInts[1]
        } else {
            secondMin = arrayOfInts[0]
        }
        
        for j in 1 ..< arrayOfInts.count {
            if j == indexToSkip {
                continue
            } else {
                if arrayOfInts[j] < secondMin {
                    secondMin = arrayOfInts[j]
                }
            }
        }
        
        return secondMin
    }
 }
