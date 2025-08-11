//
//  conversionprogressbar.swift
//  napzz
//
//  Created by Morris Romagnoli on 11/08/2025.
//

import SwiftUI

struct ConversionProgressBar: View {
    let currentStep: Int
    let totalSteps: Int = 17
    
    private var progress: Double {
        return Double(currentStep) / Double(totalSteps)
    }
    
    var body: some View {
        VStack(spacing: 0) {
            // Progress bar container
            ZStack(alignment: .leading) {
                // Background bar
                RoundedRectangle(cornerRadius: 4)
                    .fill(Color.white.opacity(0.2))
                    .frame(height: 4)
                
                // Progress fill - uniform light blue
                RoundedRectangle(cornerRadius: 4)
                    .fill(Color(red: 0.4, green: 0.7, blue: 1.0)) // Light blue color
                    .frame(width: UIScreen.main.bounds.width * 0.9 * progress, height: 4)
                    .animation(.easeInOut(duration: 0.8), value: progress)
            }
            .frame(width: UIScreen.main.bounds.width * 0.9)
        }
        .padding(.horizontal, 20)
        .padding(.bottom, 30)
        .padding(.top, 10)
    }
}

#Preview {
    ZStack {
        Color.black
            .ignoresSafeArea()
        
        VStack {
            Spacer()
            ConversionProgressBar(currentStep: 5)
        }
    }
}