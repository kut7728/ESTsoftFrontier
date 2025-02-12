//
//  OrderButton.swift
//  Proj0211Ex01_FruitMarket
//
//  Created by nelime on 2/12/25.
//
import SwiftUI

struct OrderButton: View {
    @State private var showAlert = false

    var body: some View {
        Button("Order Now") {
            showAlert = true
        }
        .alert("Order Confirmation", isPresented: $showAlert) {
            Button("Confirm", role: .none) {}
            Button("Cancel", role: .cancel) {}
        } message: {
            Text("Are you sure you want to place this order?")
        }
    }
}

#Preview {
    OrderButton()
}
