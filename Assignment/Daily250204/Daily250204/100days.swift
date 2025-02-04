//
//  100days.swift
//  Daily250204
//
//  Created by nelime on 2/4/25.
//

// 문제2) 월,일을 입력 받아서 100일 후의 월,일출력. (난이도: 고)
// 월 입력: 9월
// 일 입력: 23
// 9월 23일의 100일 후는 1월 1일입니다.

func after100Days() {
    let monthDays: [Int] = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    //               index  0   1   2   3   4   5   6   7   8   9   10  11
    //               month  1   2   3   4   5   6   7   8   9   10  11  12
    
    print("월 입력: ", terminator: "")
    let month = Int(readLine() ?? "0") ?? 0
    print("일 입력: ", terminator: "")
    let day = Int(readLine() ?? "0") ?? 0
    
    //입력받은 달의 나머지 날짜 계산
    var total = monthDays[month-1]-day
    
    // total에 더해질 다음 달
    var nextMonth = month+1
    
    while total < 100 {
        // 12월을 넘어가는 것 방지
        if nextMonth == 13 {
            nextMonth = 1
        }
        
        total += monthDays[nextMonth-1]
        
        // total이 100을 넘었음에도 어쩔수 없이 실행
        nextMonth += 1
    }
    // 실수로 더해진 1을 빼고 인덱스 서치를 위한 1 또 빼기
    let afterDay = monthDays[nextMonth-2]-(total-100)
    
    print("\(month)월 \(day)일의 100일 후는 \(nextMonth-1)월 \(afterDay)일")

    
}
