//
//  ObservedObjectView.swift
//  Lec0212Ex02_ObservedObject
//
//  Created by nelime on 2/12/25.
//

import SwiftUI

class CntClass: ObservableObject {
    @Published var count: Int
    
    init(_ cnt: Int = 0) {
        self.count = cnt
    }
    
    
}

struct ObservedObjectView: View {
    @ObservedObject var cntObj: CntClass = CntClass()
    
    var body: some View {
        VStack {
            Text("Observed Object View")
                .font(.title)
            
            Text("count: \(cntObj.count)")
            
            Button("증가하기") {
                print("증가하기 버튼 탭")
                cntObj.count += 1
            }
            .padding()
        }
    }
}

#Preview {
    ObservedObjectView()
}
