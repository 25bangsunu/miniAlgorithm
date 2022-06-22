//
//  콜라츠 추측.swift
//  레벨 1
//
//  Created by 방선우 on 2022/06/21.
//

import Foundation

//MARK: 콜라츠 추측

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    var isOdd: Bool {
        return self % 2 == 1
    }
}

func solution(_ num:Int) -> Int {
    var count = 0
    var result: Int = num

    while result != 1, count < 500 {
        if result.isEven {
            result /= 2
            count += 1
        } else if result.isOdd {
            result = result * 3 + 1
            count += 1
        }
    }
    return result == 1 ? count:-1
}


//
//func solution(_ num:Int) -> Int {
//    var num: Int = num
//
//    if num == 1 {return 0}
//
//    for i in 0..<500 {
//        if num % 2 == 0 {
//            num /= 2
//        } else if num % 2 == 1 {
//            num = num * 3 + 1
//        }
//       if num == 1 { return i + 1 }
//    }
//    return -1
//}

/*
 내꺼는 지역변수를 두개 더 선언하고 있어서 위의 for문이 더 낫다고 생각한다. 어차피 i가 500까지 다 확인하는 것이 아니라 중간에 1이면 바로 리턴되기 때문에 소요시간이 비슷할 것 이고 메모리의 용량또한 지역변수가 적어 덜 차지할 것이다.
 i + 1 인 이유는 num 이 16일 때 처음 반복문에 들어와서 i = 0, num: 16 → 8 / i = 1, num: 8 → 4 / i = 2, num: 4 → 2 / i = 3, num: 2 → 1 이기 때문이다. 
 */
