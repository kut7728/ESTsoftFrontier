//
//  ContentView.swift
//  QuoteGenerator
//
//  Created by nelime on 3/3/25.
//

import SwiftUI

struct ContentView: View {
    @State var viewModel = MainViewModel()
    
    var body: some View {
        VStack {
            Text(viewModel.quote?.message ?? "")
                .multilineTextAlignment(.center)
                .padding(.vertical, 20)
                .font(.title)
            Text(viewModel.quote?.author ?? "")
                .font(.headline)
                .padding(.top, 20)
            Text(viewModel.quote?.authorProfile ?? "")
                .foregroundStyle(.gray)
            
            Spacer()
            
            Button {
                viewModel.requestQuote()
            } label: {
                Text("띵언")
                    .frame(width: 100, height: 50)
                    .background(.blue)
                    .tint(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }

        }
        .frame(maxWidth: .infinity)
        .frame(height: 400)
        .padding()
        .onAppear {
            viewModel.requestQuote()
        }
    }
}

#Preview {
    ContentView()
}
