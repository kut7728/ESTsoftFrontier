//
//  QuantitySelector.swift
//  Proj0211Ex01_FruitMarket
//
//  Created by nelime on 2/12/25.
//
import SwiftUI

struct QuantitySelector: View {
    @State private var quantity: Int = 1

    var body: some View {
        Stepper("Quantity: \(quantity)", value: $quantity, in: 1...20)
            .padding()
    }
}

#Preview {
    QuantitySelector()
}
