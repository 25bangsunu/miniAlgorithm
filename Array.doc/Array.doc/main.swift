//
//  main.swift
//  Array.doc
//
//  Created by 방선우 on 2022/06/16.
//

import Foundation

var students = ["Ben", "Ivy", "Jordell"]
print(students.capacity) // 3

students.append("Maxime")
print(students) // ["Ben", "Ivy", "Jordell", "Maxime"]
students.insert(contentsOf: ["Shakia", "William"], at: 2)
print(students) // ["Ben", "Ivy", "Shakia", "William", "Jordell", "Maxime"]

if let i = students.firstIndex(of: "Maxime") {
    students[i] = "Max"
}
print(students) // ["Ben", "Ivy", "Shakia", "William", "Jordell", "Max"]

class IntegerReference {
    var value = 10
}

var firstIntegers = [IntegerReference(), IntegerReference()]
var secondintegers = firstIntegers

firstIntegers[0].value = 100
print(secondintegers[0].value) // 100

firstIntegers[0] = IntegerReference()
print(firstIntegers[0].value) // 10
print(secondintegers[0].value) // 100

let numbers = [7, 8, 9]
let moreNumnbers = (1...6) + numbers
var test = numbers + moreNumnbers
print(test) // [7, 8, 9, 1, 2, 3, 4, 5, 6, 7, 8, 9]

var phrase = "I love you"
var vowel: Set<Character> = ["o", "y"]
phrase.removeAll(where: { vowel.contains($0) })
print(phrase) // I lve u
print(vowel.popFirst())

enum HTTPResponse {
    case ok
    case error(Int)
}

let lastThreeResponse: [HTTPResponse] = [.ok, .ok, .error(404)]
let hadError = lastThreeResponse.contains { element in
    if case .error = element {
        return true
    } else {
        return false
    }
}
print(hadError) // true

let names = ["Sofia", "Camilla", "Martina", "Mateo", "Nicolás"]
let allHaveAtLeastFive = names.allSatisfy({ $0.count >= 5 })
