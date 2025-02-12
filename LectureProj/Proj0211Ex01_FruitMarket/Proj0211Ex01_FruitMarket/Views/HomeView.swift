//
//  HomeView.swift
//  Proj0211Ex01_FruitMarket
//
//  Created by nelime on 2/11/25.
//


import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ProductListView()
                .navigationTitle("과일마트")
        }
    }
}

#Preview {
    HomeView()
}
