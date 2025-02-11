//
//  250204.swift
//  SwiftLecture
//
//  Created by nelime on 2/4/25.
//

import Foundation

class Lecture250204 {
    
    init() {
//        runPractice01()
    }
    
    func runPractice01() {
        
        let monthDays: [Int] = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
        //               index  0   1   2   3   4   5   6   7   8   9   10  11
        //               month  1   2   3   4   5   6   7   8   9   10  11  12
        
        print("월 입력: ", terminator: "")
        let monthInput = Int(readLine() ?? "0") ?? 0
        print("일 입력: ", terminator: "")
        let dayInput = Int(readLine() ?? "0") ?? 0
        
        
        var count = 0
        for i in 1..<monthInput {
            count += monthDays[i - 1]
        }
        count += dayInput
        count += 100
        
        if count > 365 {
            count -= 365
        }
        
        for (i, days) in monthDays.enumerated() {
            if count >= days {
                count -= days
            } else {
                print("\(monthInput)월 \(dayInput)일의 100일 후는 \(i+1)월 \(count)일")
                break
            }
        }
        
        //9월 23일 100일후는 1월 1일
    }
}

