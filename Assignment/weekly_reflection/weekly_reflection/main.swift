//
//  main.swift
//  SwiftPractice
//
//  Created by nelime on 1/26/25.
//

mainMenu()




func mainMenu() {
    let system = ReflectionManager()
    
    while true {
        print("""
        === 회고 시스템 ===
        1. 회고 추가
        2. 회고 조회
        3. 회고 수정
        4. 회고 삭제
        5. 전체 회고 목록 출력
        6. 종료
        """)
        
        print("메뉴를 선택하세요: ", terminator: "")
        
        /// 빈칸이거나 숫자가 아닌 모든 경우에 오류 출력
        guard let choice = readLine(), let option = Int(choice) else {
            print("잘못된 입력입니다.")
            continue
        }
        
        switch option {
        case 1:
            system.addRef()
            
        case 2:
            system.readRef()
            
        case 3:
            system.updateRef()
            
        case 4:
            system.deleteRef()
            
        case 5:
            system.listRef()
            
        case 6:
            print("프로그램을 종료합니다.")
            break
            
        default:
            print("잘못된 메뉴 선택입니다.")
        }
        print()
        
        
    }

}

