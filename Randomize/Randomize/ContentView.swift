//
//  ContentView.swift
//  Randomize
//
//  Created by Yavuz Kaan Akyüz on 2.03.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var maximumValue = 100
    @State private var minimumValue = 0
    @State private var numberHistoryList = [Int]()
    
    var body: some View {
        TabView {
            RandomView(maximumValue: $maximumValue, minimumValue: $minimumValue, numberHistoryList: $numberHistoryList)
                       .tabItem {
                           Label("Home", systemImage: "house")
                               
                       }

            SettingsView(maximumValue: $maximumValue, minimumValue: $minimumValue)
                       .tabItem {
                           Label("Settings", systemImage: "gear")
                               
                       }
            
            HistoryView(numberHistoryView: $numberHistoryList)
                .tabItem {
                    Label("History", systemImage: "clock.arrow.circlepath")
                        
                }
               }
           }
       }
#Preview {
    ContentView()
}
