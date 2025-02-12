//
//  EnvObjectExView.swift
//  Lec0212Ex02_ObservedObject
//
//  Created by nelime on 2/12/25.
//

import SwiftUI

class UserSettings: ObservableObject {
    @Published var username: String = "Guest"
}



struct ParentView1: View {
    @StateObject var settings = UserSettings()

    var body: some View {
        ChildView().environmentObject(settings)
//        DeeperChildView()
    }
}

struct ChildView: View {
//    @EnvironmentObject var settings: UserSettings

    var body: some View {
        Text("Hello, child1!")
        DeeperChildView()
    }
}

struct DeeperChildView: View {
    @EnvironmentObject var settings: UserSettings
    
    var body: some View {
        Text("Hello, deeper child \(settings.username)!")
    }
}



struct EnvObjectExView: View {
    
    var body: some View {
        ParentView1()
    }
    
}



#Preview {
    EnvObjectExView()
}
