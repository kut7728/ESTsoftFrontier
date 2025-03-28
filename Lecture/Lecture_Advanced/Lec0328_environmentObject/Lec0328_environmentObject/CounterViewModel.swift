//
//  CounterViewModel.swift
//  Lec0328_environmentObject
//
//  Created by nelime on 3/28/25.
//


import SwiftUI
import Combine  // ObservableObject 및 @Published 사용을 위한 프레임워크

// ViewModel 정의 – MVVM 패턴에서 상태를 관리하는 역할
class CounterViewModel: ObservableObject {
    
    // 뷰에서 관찰할 수 있는 상태 값
    // 값이 변경될 때마다 자동으로 View에 알림을 보내 UI 갱신
    @Published var count: Int = 0
}