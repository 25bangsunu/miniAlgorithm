//
//  main.swift
//  레벨 1
//
//  Created by 방선우 on 2022/06/21.
//

import Foundation

//MARK: 하샤드 수

func solution(_ x:Int) -> Bool {
    let d: [Int] = [10000, 1000, 100, 10]
    var result: Int = x
    var a = 0
    
    for i in d {
        a += result / i
        result = x % i
    }
    return x % (a + result) == 0
}
