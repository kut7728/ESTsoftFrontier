import SwiftUI

struct ArrayManagerView: View {
    @State private var words: [String] = []   // 단어를 저장할 배열
    @State private var newWord: String = ""  // 새로 입력할 단어
    @State private var wordToDelete: String = "" // 삭제할 단어
    @State private var wordToSearch: String = "" // 검색할 단어
    @State private var message: String = ""  // 상태 메시지
    
    @State private var isAnimating: Bool = false

    var body: some View {
        VStack {
            Text("Array 관리 프로그램")
                .font(.largeTitle)
                .padding()

            // 사용자 입력 텍스트 필드
            HStack {
                TextField("단어 입력", text: $newWord)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button("추가") {
                    if checkWord(target: newWord) {
                        return
                    } else {
                        withAnimation(.easeIn) {
                            addWord()
                        }
                        
                    }
                }
                .padding(.horizontal)
            }

            // 입력된 단어 목록 표시
            Text("현재 단어 수: \(words.count)개")
                .font(.headline)
            
            List(words, id: \.self) { word in
                Text(word)
            }
            .listStyle(.plain)
            
            // 검색할 단어 입력
            HStack {
                TextField("검색할 단어 입력", text: $wordToSearch)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button("검색") {
                    searchWord()
                }
                .padding(.horizontal)
            }
            
            // 삭제할 단어 입력 및 삭제 버튼
            HStack {
                TextField("삭제할 단어 입력", text: $wordToDelete)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button("삭제") {
                    deleteWord()
                }
                .padding(.horizontal)
            }

            // 메시지 표시
            Text(message)
                .foregroundColor(.red)
                .padding()
        }
        .padding()
    }

    // 단어 추가 함수
    func addWord() {
        if !newWord.isEmpty {
            words.append(newWord)
            newWord = ""
            message = "단어가 추가되었습니다."
        } else {
            message = "단어를 입력하세요."
        }
    }

    // 단어 삭제 함수
    func deleteWord() {
        if let index = words.firstIndex(of: wordToDelete) {
            words.remove(at: index)
            message = "'\(wordToDelete)'을(를) 삭제했습니다."
            wordToDelete = ""
        } else {
            message = "해당 단어가 목록에 없습니다."
        }
    }
    
    func checkWord(target: String) -> Bool {
        if words.contains(target) {
            message = "이미 존재하는 단어입니다."
            newWord = ""
            return true
        } else {
            return false
        }
    }
    
    func searchWord() {
        if let index = words.firstIndex(of: wordToSearch) {
            message = "'\(wordToSearch)'은 배열의 \(index+1)번째 위치에 있습니다."
            wordToSearch = ""
        } else {
            message = "해당 단어가 목록에 없습니다."
        }
    }
}

struct ArrayManagerView_Previews: PreviewProvider {
    static var previews: some View {
        ArrayManagerView()
    }
}
