//
//  EnvObjectExView.swift
//  Lec0212Ex02_ObservedObject
//
//  Created by nelime on 2/12/25.
//

import SwiftUI

@Observable
class UserSettings {
    var username: String = "Guest"
}



struct ParentView1: View {
    @Bindable var settings = UserSettings()

    var body: some View {
        ChildView()
            .environment(settings)
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
    @Environment var settings: UserSettings
    
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
