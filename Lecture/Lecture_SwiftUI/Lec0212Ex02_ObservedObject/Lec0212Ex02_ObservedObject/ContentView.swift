//
//  ContentView.swift
//  Lec0212Ex02_ObservedObject
//
//  Created by nelime on 2/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ObservedObjectView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            ParentView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
            
            EnvObjectExView()
                .tabItem {
                    Image(systemName: "folder")
                    Text("EnvObject")
                }
        }
       
    }
}

#Preview {
    ContentView()
}
