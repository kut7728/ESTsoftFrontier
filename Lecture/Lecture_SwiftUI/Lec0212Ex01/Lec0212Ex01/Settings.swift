//
//  Settings.swift
//  Lec0212Ex01
//
//  Created by nelime on 2/12/25.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("여기는 메인 화면입니다.")
                    .font(.title)
                
                NavigationLink {
                    DetailSettingView()
                } label: {
                    Text("세부화면으로 이동")
                        .padding()
                        .background(.blue)
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                }
                
            }
        }
        
    }
}

#Preview {
    Settings()
}
