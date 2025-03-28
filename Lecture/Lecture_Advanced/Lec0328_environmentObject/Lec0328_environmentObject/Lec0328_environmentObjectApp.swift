//
//  Lec0328_environmentObjectApp.swift
//  Lec0328_environmentObject
//
//  Created by nelime on 3/28/25.
//

import SwiftUI

@main
struct CounterApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView() // 이 View 내부에서 @EnvironmentObject 사용
            }
            // 이 한 줄로 모든 하위 뷰에 CounterViewModel을 전달함
            .environmentObject(CounterViewModel())
        }
    }
}
