//
//  OrderListView.swift
//  Proj0211Ex01_FruitMarket
//
//  Created by nelime on 2/12/25.
//
import SwiftUI

struct OrderListView: View {
    @EnvironmentObject var orderModel: OrderModel

    var body: some View {
        List(orderModel.orders) { order in
            Text(order.name)
        }
    }
}
