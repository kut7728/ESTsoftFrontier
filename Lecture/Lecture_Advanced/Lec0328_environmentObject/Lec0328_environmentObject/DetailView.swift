//
//  DetailView.swift
//  Lec0328_environmentObject
//
//  Created by nelime on 3/28/25.
//


import SwiftUI

struct DetailView: View {
    // ContentView에서 전달된 전역 상태 객체를 주입받음
    @EnvironmentObject var viewModel: CounterViewModel

    var body: some View {
        VStack(spacing: 20) {
            Text("상세화면입니다.")
            Text("현재 Count: \(viewModel.count)")
            Button("감소") {
                viewModel.count -= 1
            }
        }
        .padding()
    }
}