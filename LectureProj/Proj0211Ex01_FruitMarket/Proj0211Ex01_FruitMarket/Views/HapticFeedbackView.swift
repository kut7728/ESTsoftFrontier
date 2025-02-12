//
//  HapticFeedbackView.swift
//  Proj0211Ex01_FruitMarket
//
//  Created by nelime on 2/12/25.
//
import SwiftUI

struct HapticFeedbackView: View {
    var body: some View {
        Button(action: {
            let generator = UIImpactFeedbackGenerator(style: .medium)
            generator.impactOccurred()
        }) {
            Text("구매하기")
                .bold()
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}

#Preview {
    HapticFeedbackView()
}
