//
//  SettingView.swift
//  Randomize
//
//  Created by Yavuz Kaan Akyüz on 2.03.2024.
//

import SwiftUI

struct SettingsView: View {
    
    @Binding var maximumValue: Int
    @Binding var minimumValue: Int
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    Picker(selection: $maximumValue, label: Text("Maximum Value").font(.title)) {
                        ForEach(0..<1000 + 1) {
                                Text("\($0)")
                            }
                    }
                }
                Section {
                    Picker(selection: $minimumValue, label: Text("Minimum Value").font(.title)) {
                        ForEach(0..<1000 + 1) {
                            Text("\($0)")
                        }
                    }
                }
                
                
            }
            .navigationTitle("Settings")
            .padding()
        }
        
        
    }
}
