//
//  main.swift
//  LectureProj
//
//  Created by nelime on 2/5/25.
//

import Foundation

while true {
    selection()
}

func selection(){
    print("::::: 전화 번호부 :::::")
    print(
    """
    ----- MENU -----
    1) INPUT  2) OUTPUT  3) SEARCH  4) DELETE  5) END
    Choice: 
    """, terminator: ""
    )
    
    let choice: String = readLine() ?? ""
    print()
    
    switch choice {
    case "1":
        input()
    case "2":
        output()
    case "3":
        search()
    case "4":
        delete()
    case "5":
        end()
    default:
        print("유효하지 않은 명령입니다")
    }
    
    print()
}
