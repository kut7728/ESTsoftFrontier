//
//  FavoriteButton.swift
//  Proj0211Ex01_FruitMarket
//
//  Created by nelime on 2/12/25.
//
import SwiftUI

struct FavoriteButton: View {
    @State private var isFavorite: Bool = false

    var body: some View {
        Button(action: {
            isFavorite.toggle()
        }) {
            Image(systemName: isFavorite ? "heart.fill" : "heart")
                .foregroundColor(isFavorite ? .red : .gray)
        }
    }
}

#Preview {
    FavoriteButton()
}
