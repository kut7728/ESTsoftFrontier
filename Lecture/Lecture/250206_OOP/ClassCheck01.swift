//
//  ClassCheck01.swift
//  Lecture
//
//  Created by nelime on 2/6/25.
//
import Foundation

class ShapeBuilder {
    var shapes: [Shape] = []

    
    init() {
        menu()
        
        for shape in shapes {
            shape.draw()
            print("\(shape.name)이라는 이름의 \(shape.size) 사이즈의 도형이 만들어졌습니다.")
        }
    }
    
    func menu() {
        print("===== 도형 만들기 =====")
        print("[1] 기본 도형  [2] 원 만들기  [3] 사각형 만들기")
        print("옵션을 선택하세요) ", terminator: "")
        
        let choice = Int(readLine() ?? "0")
        
        switch choice {
        case 1:
            let (name, size) = getInput()
            shapes.append(Shape(name: name, size: size))
            
        case 2:
            let (name, size) = getInput()
            shapes.append(Circle(name: name, size: size))
            
        case 3:
            let (name, size) = getInput()
            shapes.append(Rectangle(name: name, size: size))
            
        default:
            print("올바른 옵션을 선택해주세요.")
            
            
        }
    }
    
    func getInput() -> (String, Int) {
        print("도형의 이름: ", terminator: "")
        let name = readLine() ?? ""
        
        print("도형의 크기: ", terminator: "")
        let size = Int(readLine() ?? "0")!
        
        return (name, size)
    }
}




class Shape {
    var name: String
    var size: Int
    
    init(name: String, size: Int) {
        self.name = name
        self.size = size
    }
    
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




