//
//  PickerExample.swift
//  Lec0213Ex03_UserInput
//
//  Created by nelime on 2/13/25.
//
import SwiftUI

struct PickerExample: View {
    @State private var selectedColor = "Red"
    let colors = ["Red", "Green", "Blue"]

    var body: some View {
        VStack {
            Text("선택한 색상: \(selectedColor)")
            Picker("색상 선택", selection: $selectedColor) {
                ForEach(colors, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
        }
    }
}
