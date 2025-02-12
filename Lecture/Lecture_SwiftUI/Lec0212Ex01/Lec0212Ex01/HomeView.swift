//
//  HomeView.swift
//  Lec0212Ex01
//
//  Created by nelime on 2/12/25.
//

import SwiftUI

struct HomeView: View {
    @State var count = 0
    
    var body: some View {
        VStack (spacing: 20) {
            Image(systemName: "house")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
            
            Text("Hello, World!")
                .font(.largeTitle)
            
            Button {
                print("버튼이 클릭되었습니다.")
                count += 1
            } label: {
                Text("Button")
                    .padding()
                    .background(.blue)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
        }
    }
}

#Preview {
    HomeView()
}
