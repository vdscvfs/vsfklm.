//
//  conversionpage6.swift
//  napzz
//
//  Created by Morris Romagnoli on 04/07/2025.
//

import SwiftUI

struct ConversionPage6: View {
    // Closure for navigation, if needed
    var onNext: (() -> Void)?
    
    let options: [(String, String)] = [
        ("😩", "Always"),
        ("😣", "Usually"),
        ("🤔", "Sometimes"),
        ("😊", "Rarely")
    ]
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack(spacing: 0) {
                VStack(spacing: 24) {
                // Robot image (replace with your asset if you have one)
                Image(systemName: "face.smiling")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .foregroundColor(.white)
                    .padding(.top, 40)
                
                Text("How often do you wake up tired in the morning?")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                ForEach(options, id: \.1) { emoji, label in
                    NavigationLink(destination: ConversionPage7()) {
                        HStack {
                            Text(emoji)
                                .font(.title2)
                            Text(label)
                                .foregroundColor(.white)
                                .font(.headline)
                                .padding(.leading, 4)
                            Spacer()
                        }
                        .padding()
                        .background(Color(red: 32/255, green: 33/255, blue: 36/255))
                        .cornerRadius(18)
                    }
                    .padding(.horizontal)
                }
                Spacer()
                }
                
                ConversionProgressBar(currentStep: 6)
            }
        }
        .navigationBarHidden(true)
    }
}
