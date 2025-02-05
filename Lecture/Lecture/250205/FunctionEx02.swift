//
//  FunctionEx.swift
//  Lecture
//
//  Created by nelime on 2/5/25.
//

struct FunctionEx02 {
    
    func run() {
        let userInfo = getUserInfo()
        print(userInfo.name, userInfo.age)
    }
    
    
    
    func getUserInfo () -> (name: String, age: Int) {
        let name: String
        print("이름: ", terminator: "")
        name = readLine() ?? ""
        let age: Int
        print("나이: ", terminator: "")
        age = Int(readLine() ?? "") ?? 0
        
        return (name, age)
    }
    
    
    
    
    
    
    
}
