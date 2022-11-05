//
//  main.swift
//  StandardAlgorithms
//
//  Created by Carruthers, James (EJNR) on 05/11/2022.
//

import Foundation

func randomFunction() -> Int {
    var total = Int()
    for _ in 1...4 {
        let randomNumber = Int.random(in: 1...3)
        total += randomNumber
    }
    return total
}

print("Hello, Jamie!")

let question = "How are you today"
let message = "\(question)?"

print(message)


print(randomFunction())
