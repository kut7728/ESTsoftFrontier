//
//  ProductListView.swift
//  Proj0211Ex01_FruitMarket
//
//  Created by nelime on 2/11/25.
//


import SwiftUI

struct ProductListView: View {
//    let products = [
//        Product(name: "나는야 무화과", imageName: "fig", price: 3100, description: "소화가 잘되고 변비에 좋은 달달한 국내산 무화과에요. 고기와 찰떡궁합!", isFavorite: false),
//        Product(name: "나는야 무화과", imageName: "fig", price: 3100, description: "소화가 잘되고 변비에 좋은 달달한 국내산 무화과에요. 고기와 찰떡궁합!", isFavorite: false),
//        Product(name: "나는야 무화과", imageName: "fig", price: 3100, description: "소화가 잘되고 변비에 좋은 달달한 국내산 무화과에요. 고기와 찰떡궁합!", isFavorite: false)
//    ]
    
    let productLoader = ProductDataLoader()
    
    var body: some View {
        NavigationView {
            List(productLoader.products) { product in            
                NavigationLink {
                    ProductCard(product: product)
                } label: {
                    ProductRow(product: product)
                }
                
            }
            .navigationTitle("상품 목록")
        }
    }
}

#Preview {
    ProductListView()
}
