//
//  ProductDetailView.swift
//  Proj0211Ex01_FruitMarket
//
//  Created by nelime on 2/12/25.
//
import SwiftUI

struct ProductDetailView: View {
    let product: Product

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(product.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)

                Text(product.name)
                    .font(.largeTitle)
                    .padding(.top)

                Text("₩\(product.price)")
                    .font(.title)
                    .foregroundColor(.gray)
                    .padding(.bottom)

                Text("이 상품은 신선한 과일로, 최고의 품질을 보장합니다.")
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)

                Spacer()
            }
            .padding()
            .navigationTitle(product.name)
        }
    }
}
