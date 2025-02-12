//
//  BindingExView.swift
//  Lec0212Ex02_ObservedObject
//
//  Created by nelime on 2/12/25.
//

import SwiftUI

struct ParentView: View {
    @State private var isOn = false

    var body: some View {
        ToggleView(isOn: $isOn)  // @Binding 사용
    }
}

struct ToggleView: View {
    @Binding var isOn: Bool

    var body: some View {
        Toggle("Switch", isOn: $isOn)
            .padding()
    }
}


#Preview {
    ParentView()
}
