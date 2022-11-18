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
    
    func mergeSort(unsortedArray: [Int]) -> [Int] {
      if unsortedArray.count <= 1 {
        return unsortedArray
      } else {
        let middleIndex = unsortedArray.count / 2
      
        let leftSlice = Array(unsortedArray.prefix(middleIndex))
        let rightSlice = Array(unsortedArray.suffix(unsortedArray.count - middleIndex))

        let leftSortedSlice = Array(mergeSort(unsortedArray: leftSlice))
        let rightSortedSlice = Array(mergeSort(unsortedArray: rightSlice))

        var newArray:[Int] = []
        var i = 0
        var j = 0
        while i < leftSortedSlice.count && j < rightSortedSlice.count {
          if leftSortedSlice[i] > rightSortedSlice[j] {
            newArray.append(rightSortedSlice[j])
            j += 1
          } else {
            newArray.append(leftSortedSlice[i])
            i += 1
          }
        }
        if i == leftSortedSlice.count {
          newArray += Array(rightSortedSlice.suffix(rightSortedSlice.count - j))
        } else {
          newArray += Array(leftSortedSlice.suffix(leftSortedSlice.count - i))
        }
        return newArray
      }
    }
    
    func insertionSort(unsortedArray: [Int]) -> [Int] {
        var newArray: [Int] = [unsortedArray[0]]
        for i in 1..<unsortedArray.count {
            for j in 0..<newArray.count {
                if newArray[j] > unsortedArray[i] {
                    newArray.insert(unsortedArray[i], at: j)
                    break
                }
                
                if j == newArray.count - 1 {
                    newArray.append(unsortedArray[i])
                }
            }
        }
        return newArray
    }
    
    func quickSort(unsortedArray: [Int]) -> [Int] {
        if unsortedArray.count <= 1 {
            return unsortedArray
            
        } else {
            let middleIndex = unsortedArray.count / 2
            var leftSlice: [Int] = []
            var rightSlice: [Int] = []
            for num in unsortedArray {
                if num < unsortedArray[middleIndex] {
                    leftSlice.append(num)
                } else {
                    rightSlice.append(num)
                }
            }
            return quickSort(unsortedArray: leftSlice) + [unsortedArray[middleIndex]] + quickSort(unsortedArray: rightSlice)
        }
    }
}
