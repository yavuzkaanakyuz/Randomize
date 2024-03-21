//
//  ContentView.swift
//  Randomize
//
//  Created by Yavuz Kaan Akyüz on 28.02.2024.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct RandomView: View {
    @State private var value = 0
    @Binding var maximumValue: Int
    @Binding var minimumValue: Int
    @State private var animationAmount = 1.0
    @Binding var numberHistoryList: [Int]
    

    
    var body: some View {
        
            VStack {
                Text("\(value)")
                    
                    .font(.system(size: 120))
                    .contentTransition(.numericText())
                    
                    
                Spacer()
                    .frame(height: 140)
                Button(" ") {
                    value = Int.random(in: minimumValue...maximumValue)
                    numberHistoryList.append(value)
                    
                    
                }
                .font(.system(size: 2))
                .padding(20)
                .background(.white)
                .foregroundColor(.blue)
                .clipShape(Circle())
                .foregroundStyle(.white)
                .scaleEffect(animationAmount)
                .overlay(
                    Circle()
                        
                        .stroke(.white)
                        .scaleEffect(animationAmount * 1.5)
                        .opacity(2 - animationAmount)
                        .animation(
                            .easeOut(duration: 2)
                            .repeatForever(autoreverses: false),
                            value: animationAmount
                        )
                )
                .onAppear() {
                    animationAmount = 2
                }
            }.animation(.easeInOut(duration: 0.1), value: value)
            .frame(maxWidth: .infinity,maxHeight: .infinity)
        }
    }

