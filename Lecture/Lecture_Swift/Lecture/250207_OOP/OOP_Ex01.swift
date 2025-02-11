//
//  EX.swift
//  Lecture
//
//  Created by nelime on 2/7/25.
//

// 클래스 정의
class OOP_Ex01 {
    init() {
        main()
    }
    
    
    func main() {
        let person1 = Person(name: "Alice")
        let person2 = person1
        person2.name = "Bob"

        print(person1.name)  // 출력: Bob (참조 타입)

        // 구조체 인스턴스 생성
        var animal1 = Animal(type: "Cat")
        var animal2 = animal1
        animal2.type = "Dog"

        print(animal1.type)  // 출력: Cat (값 타입)
    }
    
}

// 클래스 정의
class Person {
    var name: String

    init(name: String) {
        self.name = name
    }
}

// 구조체 정의
struct Animal {
    var type: String
}

