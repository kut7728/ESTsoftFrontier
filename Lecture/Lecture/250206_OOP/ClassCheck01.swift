//
//  ClassCheck01.swift
//  Lecture
//
//  Created by nelime on 2/6/25.
//
import Foundation

func run() {
    var shapes: [Shape] = []
    
    shapes.append(Circle())
    shapes.append(Rectangle())
    
    for shape in shapes {
        shape.draw()
    }
}

class Shape {
    
    func draw() {
        print("도형을 그립니다.")
    }
}

class Circle: Shape {
    override func draw() {
        print("원형 도형을 그립니다.")
    }
    
}


class Rectangle: Shape {
    override func draw() {
        print("사각형 도형을 그립니다.")
    }
}




