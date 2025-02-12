//
//  ContentView.swift
//  Proj0211Ex01_FruitMarket
//
//  Created by nelime on 2/12/25.
//
import SwiftUI

struct ContentView: View {
    @StateObject private var orderModel = OrderModel()

    var body: some View {
        MainTabView()
            .environmentObject(orderModel)
    }
}
