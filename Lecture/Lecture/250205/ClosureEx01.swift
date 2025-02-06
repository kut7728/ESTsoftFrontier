//
//  ClosureEx01.swift
//  Lecture
//
//  Created by nelime on 2/5/25.
//

struct ClosureEx01 {
    func run () {
        ex02()
    }
    
    
    func referencingFunction() {
        
        func myFunc() {
            print("myFunc 호출")
        }
        
        var refFunc = myFunc
        
        refFunc()
    }
    
    func ex02() {
        let numbers: [Int] = [1, 2, 3, 4, 5]
        let newNumbers = numbers.map { $0 * 2 }
        
        print(newNumbers)
        print(newNumbers.sorted())
        print(newNumbers.sorted{ $0 > $1 })
    }
    
}
