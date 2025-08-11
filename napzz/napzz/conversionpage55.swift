//
//  conversionpage55.swift
//  napzz
//
//  Created by Morris Romagnoli on 04/07/2025.
//
import SwiftUI

struct ConversionPage5: View {
    let options: [(String, String)] = [
        ("💤", "Never"),
        ("👋", "Every once in a while"),
        ("👀", "Pretty often"),
        ("🌙", "Most nights")
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
                
                Text("Do you ever wake up at night and have trouble getting back to sleep?")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                ForEach(options, id: \.1) { emoji, label in
                    NavigationLink(destination: ConversionPage6()) {
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
                
                ConversionProgressBar(currentStep: 5)
            }
        }
        .navigationBarHidden(true)
    }
}
