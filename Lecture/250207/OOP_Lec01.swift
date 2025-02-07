//
//  OOP_Lecture01.swift
//  Lecture
//
//  Created by nelime on 2/7/25.
//

class OOP_Lec01 {
    init() {
        main()
    }
    
    func main() {
        let productList: [Product] = [Car2(brand: "BMW", model: "M3"), Book2(title: "little prince", author: "mouse")]
        for product in productList {
            product.displayInfo()
        }
    }
}

protocol Product {
    func displayInfo()
}

class Car2: Product {
    var brand: String
    var model: String

    init(brand: String, model: String) {
        self.brand = brand
        self.model = model
    }
    
    func displayInfo() {
        print("\(brand) \(model)")
    }
}

class Book2: Product {
    var title: String
    var author: String
    
    init(title: String, author: String) {
        self.title = title
        self.author = author
    }

        // 제목과 저자를 출력
    func displayInfo() {
        print("\(title) by \(author)")
    }
}
