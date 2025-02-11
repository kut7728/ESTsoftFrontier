//
//  ClassCheck01.swift
//  Lecture
//
//  Created by nelime on 2/6/25.
//
import Foundation

class ShapeBuilder {
    var shapes: [Shape] = []
    
    func run() {
        while true {
            print()
            print("::::: 도형 빌더 :::::")
            print("[1] 도형 만들기  [2] 도형 리스트 확인  [3] 프로그램 종료")
            print("옵션을 선택하세요) ", terminator: "")
            
            let choice = Int(readLine() ?? "0")
            
            switch choice {
            case 1:
                inputShape()
                
            case 2:
                showList()
                
            case 3:
                print("안녕히 가십시오")
                return
                
            default:
                print("올바른 옵션을 선택해주세요.")
                
            }
        }
    }
    
    func inputShape() {
        print()
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
    
    func showList() {
        print("===== 도형 리스트 확인 =====")

        for shape in shapes {
            shape.draw()
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








