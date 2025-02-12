//
//  MainTabView.swift
//  Proj0211Ex01_FruitMarket
//
//  Created by nelime on 2/12/25.
//


import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }

            RecipeView()
                .tabItem {
                    Label("Recipe", systemImage: "book")
                }

//            ImageGallery()
//                .tabItem {
//                    Label("Gallery", systemImage: "photo")
//                }

            MyPageView()
                .tabItem {
                    Label("My Page", systemImage: "person.circle")
                }
        }
    }
}

#Preview {
    MainTabView()
}
