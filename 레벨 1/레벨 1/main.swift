//
//  File.swift
//  레벨 1
//
//  Created by 방선우 on 2022/06/21.
//

import Foundation

//MARK: 평균구하기

func solution(_ arr:[Int]) -> Double {
    return Double(arr.reduce(0, +)) / Double(arr.count)
}
