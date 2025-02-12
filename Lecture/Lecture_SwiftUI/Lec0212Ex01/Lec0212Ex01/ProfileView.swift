//
//  ProfileView.swift
//  Lec0212Ex01
//
//  Created by nelime on 2/12/25.
//

import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var name: String
}


struct ProfileView: View {
    let fruits = [
        Fruit(name: "Apple"),
        Fruit(name: "Banana"),
        Fruit(name: "Cherry"),
        Fruit(name: "Mango")
    ]
    
    var body: some View {
        NavigationView {
            List(fruits) { fruit in
                Text(fruit.name)
            }
            .navigationTitle(Text("Profile"))
        }
    }
}

#Preview {
    ProfileView()
}
