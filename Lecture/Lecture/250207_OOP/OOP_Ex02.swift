//
//  OOP_Ex02.swift
//  Lecture
//
//  Created by nelime on 2/7/25.
//

class OOP_Ex02 {
    init() {
        main()
    }
    
    func main() {
        let car = Car1(brand: "Hyundai", model: "Sonata")
        car.displayInfo()  // 출력: Hyundai Sonata
        
        var book = Book1(title: "me", author: "mine")
//        book.title = "him"
        book.changeTitle("him")
        
    }
}

class Car1 {
    var brand: String
    var model: String
    
    init(brand: String, model: String) {
        self.brand = brand
        self.model = model
    }
    
    // 브랜드와 모델을 출력
    func displayInfo() {
        print("\(brand) \(model)")
    }
}

struct Book1 {
    var title: String
    var author: String
    
    // 제목과 저자를 출력
    func displayInfo() {
        print("\(title) by \(author)")
    }
    
    mutating func changeTitle(_ newTitle: String) {
        self.title = newTitle
    }
}
