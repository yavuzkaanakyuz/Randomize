//
//  HistoryView.swift
//  Randomize
//
//  Created by Yavuz Kaan Akyüz on 2.03.2024.
//

import SwiftUI

struct HistoryView: View {
    @Binding var numberHistoryView: [Int]
    var body: some View {
        NavigationStack {
            List {
                ForEach(numberHistoryView, id: \.self) { index in
                    Text("\(index)")
                        .font(.title)
                    
                }
                
            }
            .navigationTitle("History")
            
        }
        
    }
}
