//
//  OrderModel.swift
//  Proj0211Ex01_FruitMarket
//
//  Created by nelime on 2/12/25.
//


import SwiftUI

class OrderModel: ObservableObject {
    @Published var orders: [Product] = []

    func addOrder(_ product: Product) {
        orders.append(product)
    }
}