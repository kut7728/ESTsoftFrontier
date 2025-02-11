//
//  Classes.swift
//  Lecture
//
//  Created by nelime on 2/6/25.
//
import Foundation

class Shape {
    var name: String
    var size: Int
    
    init(name: String, size: Int) {
        self.name = name
        self.size = size
    }
    
    func draw() {
        print("\(name) 이라는 이름의 일반 도형을 \(size)의 크기로 그립니다.")
    }
}

class Circle: Shape {
    override func draw() {
        print("\(name) 이라는 이름의 원형 도형을 \(size)의 크기로 그립니다.")
    }
    
}


class Rectangle: Shape {
    override func draw() {
        print("\(name) 이라는 이름의 사각형 도형을 \(size)의 크기로 그립니다.")
    }
}
