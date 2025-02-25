//
//  ContentView.swift
//  Lec0213Ex01_UserDefaults
//
//  Created by nelime on 2/13/25.
//

import SwiftUI

struct ContentView: View {
    @State private var logList: [Log] = []
    
    @State private var type: String = ""
    @State private var amount: String = ""
    
    

    // MARK: - body func
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("User Information")) {
                    TextField("Type", text: $type)
                    TextField("Amount", text: $amount)
                }
                
                Section(header: Text("Buttons")) {
                    Button("Save") {
                        saveData()
                    }
                    
                    Button("Load") {
                        loadData()
                    }
                }
            } // end of form
        }
    } // end of body
    
    // MARK: - Save Func
    func saveData() {
        let log = Log(type: type, amount: Int(amount) ?? 0)
        /// 라이브 로그 리스트에 추가
        logList.append(log)
        UserDefaults.standard.set(logList, forKey: "logList")
        
        print("Saved")
    }
    
    // MARK: - Load Func
    func loadData() {
        logList = (UserDefaults.standard.array(forKey: "logList") ?? [] ) as! [Log]
        
        print("Loaded")
    }
}

#Preview {
    ContentView()
}
