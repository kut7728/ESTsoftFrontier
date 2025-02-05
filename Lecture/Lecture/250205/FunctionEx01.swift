//
//  FunctionEx.swift
//  Lecture
//
//  Created by nelime on 2/5/25.
//

struct FunctionEx {
    
    func run() {
        print("run function")
        example01(title: "덧셈예제")
    }
    
    func example01(title: String) {
            print("첫번째 예제는 (title)입니다.")


            let value1: Int = 100
            let value2: Int = 150
            let total = add(x: value1, y:value2)
            print("\(value1) 더하기 \(value2)는 \(total)입니다.")
        }
    
    func add(x: Int, y: Int) -> Int {
        return x + y
    }
    
    
    
    
    
}
