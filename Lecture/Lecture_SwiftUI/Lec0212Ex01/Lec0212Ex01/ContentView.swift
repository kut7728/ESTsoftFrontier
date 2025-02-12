//
//  ContentView.swift
//  Lec0212Ex01
//
//  Created by nelime on 2/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            
            HomeView().tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            
            ProfileView().tabItem {
                Image(systemName: "person.circle")
                Text("Profile")
            }
            
            Settings().tabItem {
                Image(systemName: "gear")
                Text("Settings")
            }
            
        }
    }
}

#Preview {
    ContentView()
}
