//
//  핸드폰 번호 가리기.swift
//  레벨 1
//
//  Created by 방선우 on 2022/06/17.
//

import Foundation

//MARK: 핸드폰 번호 가리기
// 조건 : 번호 자리수는 4이상 20이하

func solution(_ phone_number:String) -> String {
    var num: String = ""
    
    if phone_number.count == 4 {
        num = phone_number
    } else {
         return phone_number.replacingOccurrences(of: phone_number[phone_number.startIndex...phone_number.index(phone_number.endIndex, offsetBy: -5)], with: String(repeating: "*", count: phone_number.count - 4))
    }
    return num
}

