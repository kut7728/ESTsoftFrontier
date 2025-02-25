//
//  TextFieldExample.swift
//  Lec0213Ex03_UserInput
//
//  Created by nelime on 2/13/25.
//
import SwiftUI

struct TextFieldExample: View {
    @State private var name: String = ""

    var body: some View {
        VStack {
            Text("이름을 입력하세요:")
            TextField("이름", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Text("입력한 이름: \(name)")
        }
        .padding()
    }
}
