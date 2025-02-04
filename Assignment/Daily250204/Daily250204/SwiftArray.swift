//
//  SwiftArray.swift
//  Daily250204
//
//  Created by nelime on 2/4/25.
//

func swiftArray() {
    var array1: [String] = Array(repeating: "", count: 5)
    
    var array2 = [String](repeating: "", count: 5)
    print(array1, array2)
    
    array1.append("test1")
    print(array1)
    
    array2.append(contentsOf: ["test2", "test3"])
    print(array2)
    
    print(array2.contains("test2"))
}

        /*
         배열 요소 관리 문제
         사용자로부터 5개의 단어를 입력받아 배열에 저장한 후,
         1. 특정 단어를 검색하여 있는지 확인하고
         2. 검색된 단어를 삭제한 뒤
         3. 배열을 출력하는 프로그램을 작성하세요.
         
         힌트
         - readLine()을 사용하여 사용자 입력을 받습니다.
         - contains(_:)를 사용하여 배열에 특정 단어가 있는지 확인합니다.
         - remove(at:)을 사용하여 요소를 삭제합니
         
         실행 예
         5개의 단어를 입력하세요:
         Apple
         Banana
         Grape
         Orange
         Mango
         입력한 단어 목록: ["Apple", "Banana", "Grape", "Orange", "Mango"]
         삭제할 단어를 입력하세요:
         Grape
         'Grape'을(를) 삭제하였습니다.
         최종 단어 목록: ["Apple", "Banana", "Orange", "Mango"]
        */

func checkTime() {
    var list: [String] = []
    print("5개의 단어를 입력하세요:")
    for _ in 0..<5 {
        if let input = readLine() {
            list.append(input)
        }
    }
    print("입력한 단어 목록: \(list)")
    
    print("삭제할 단어를 입력하세요:")
    let input = readLine()!
    
    if list.contains(input)==true {
        let index = list.firstIndex(of: input)
        list.remove(at: index!)
        print("'\(input)'을(를) 삭제하였습니다.")
        print("최종 단어 목록: \(list)")
        
    }
}
