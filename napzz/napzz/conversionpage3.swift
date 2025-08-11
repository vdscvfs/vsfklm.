//
//  conversionpage3.swift
//  napzz
//
//  Created by Morris Romagnoli on 04/07/2025.
//


import SwiftUI

struct ConversionPage3: View {
    @State private var showNextPage = false
    
    let options = [
        "Less than 10 minutes",
        "10-30 minutes",
        "30-60 minutes",
        "More than 1 hour"
    ]
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack(spacing: 0) {
                VStack(spacing: 24) {
                Image(systemName: "bed.double.fill")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .foregroundColor(.white)
                    .padding(.top, 40)
                
                Text("How long does it take to fall asleep?")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                ForEach(options, id: \.self) { option in
                    Button(action: {
                        showNextPage = true
                    }) {
                        HStack {
                            Text(option)
                                .foregroundColor(.white)
                                .font(.headline)
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
                
                ConversionProgressBar(currentStep: 3)
            }
        }
        .navigationDestination(isPresented: $showNextPage) {
            ConversionPage4()
        }
    }
}

