//
//  ContentView.swift
//  SwiftUI_Lecture01
//
//  Created by nelime on 2/10/25.
//

import SwiftUI

struct CustomButton: View {
    var title: String
    var action: () -> Void
    var body: some View {
        Button(title) {
            action()
        }
    }
}

// 오늘의 명언: 급하면 망한다.
struct ContentView: View {
    var body: some View {
        CustomButton(title: "Click Me") {
            print("Hello world!")
        }
        Text("Placeholder")
            .font(.title)
            .multilineTextAlignment(.center)
            .padding()
        Button("클릭!") {
            print("클릭했습니다.")
        }
        .padding(.trailing, 0.0)
    }
}


#Preview {
    ContentView()
}
