//
//  FunctionEx.swift
//  Lecture
//
//  Created by nelime on 2/5/25.
//

struct FunctionEx03 {
    
    func run() {
        if let result: String = getName() {
            print("\(result)님 안녕하세요")
        } else {
            print("값이 유효하지 않습니다.")
        }
    }
    
    
    
    func getName() -> String? {
        return "ghdxkr"
    }
    
    
    
    
    
    
    
}
