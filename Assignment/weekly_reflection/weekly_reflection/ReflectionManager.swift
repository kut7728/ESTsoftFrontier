//
//  ReflectionSystem.swift
//  SwiftPractice
//
//  Created by nelime on 1/26/25.
//

// MARK: 회고 일자와 내용을 담은 구조체
struct Reflection {
    var date: String
    var content: String
}

// MARK: - 회고시스템 메인 클래스
class ReflectionManager {
    
    /// 조회 편의성을 위해 [일자:회고 구조체] 형태의 딕셔너리
    var reflections: [String:Reflection] = [:]
    
    /// 회고 추가 메서드
    func addRef() {
        print("날짜를 입력하세요 (예: 2033-03-02): ", terminator: "")
        guard let date = readLine() else { return }
        print("회고 내용을 입력하세요: ", terminator: "")
        guard let content = readLine() else { return }
        
        let ref = Reflection(date: date, content: content)
        reflections[date] = ref
        
        print("회고가 저장되었습니다.")
    }
    
    /// 회고 조회 메서드
    func readRef() {
        print("날짜를 입력하세요 (예: 2033-03-02): ", terminator: "")
        guard let date = readLine() else { return }
        
        if let ref = self.reflections[date] {
            print("\(ref.date): \(ref.content)")
            
        } else {
            print("해당 날짜의 회고가 없습니다.")
        }
    }
    
    /// 회고 수정 메서드
    func updateRef() {
        print("날짜를 입력하세요 (예: 2033-03-02): ", terminator: "")
        guard let date = readLine() else { return }
        
        if self.reflections[date] != nil {
            print("회고 내용을 입력하세요: ", terminator: "")
            guard let content = readLine() else { return }
            self.reflections[date]?.content = content
            print("회고가 수정되었습니다.")
        } else {
            print("해당 날짜의 회고가 없습니다.")
        }
    }
    
    /// 회고 삭제 메서드
    func deleteRef() {
        print("날짜를 입력하세요 (예: 2033-03-02): ", terminator: "")
        guard let date = readLine() else { return }
        
        if self.reflections[date] != nil {
            reflections.removeValue(forKey: date)
            print("회고가 삭제되었습니다.")

        } else {
            print("해당 날짜의 회고가 없습니다.")
        }
    }
    
    /// 전체 회고 출력 메서드
    func listRef() {
        if reflections.isEmpty {
            print("저장된 회고가 없습니다.")
        } else {
            for (date, ref) in reflections {
                print("날짜: ", date)
                print("내용: ", ref.content)
            }
        }
    }
}
