//
//  main.swift
//  StandardAlgorithms
//
//  Created by Tummuru, Sritej (Coll) on 05/11/2022.
//

import Foundation

func printIntegers(range: Int) {
    var currentNum = 0
    for i in 0..<range {
        currentNum = i
        print(currentNum)
    }
}

print("Hello, Sritej!")

printIntegers(range: 5)

let question = "How are you today"
let message = "\(question)?"
print(message)
