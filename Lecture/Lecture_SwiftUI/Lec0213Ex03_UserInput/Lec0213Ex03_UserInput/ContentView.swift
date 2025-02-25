//
//  ContentView.swift
//  Lec0213Ex03_UserInput
//
//  Created by nelime on 2/13/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            
            TextFieldExample()
                .tabItem {
                    Image(systemName: "person.fill")
                    
                }
            
            PickerExample()
                .tabItem {
                    Image(systemName: "square.and.arrow.up")
                }
            
            DatePickerExample()
                .tabItem {
                    Image(systemName: "calendar")
                }
        }
        
    }
}


#Preview {
    ContentView()
}
