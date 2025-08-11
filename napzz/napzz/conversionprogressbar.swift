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
                
                // Progress fill
                RoundedRectangle(cornerRadius: 4)
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [
                                Color.blue,
                                Color.purple.opacity(0.8)
                            ]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .frame(width: UIScreen.main.bounds.width * 0.8 * progress, height: 4)
                    .animation(.easeInOut(duration: 0.5), value: progress)
            }
            .frame(width: UIScreen.main.bounds.width * 0.8)
            
            // Step indicator
            HStack {
                Text("\(currentStep) of \(totalSteps)")
                    .font(.caption)
                    .foregroundColor(.white.opacity(0.7))
                Spacer()
                Text("\(Int(progress * 100))%")
                    .font(.caption)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
            }
            .frame(width: UIScreen.main.bounds.width * 0.8)
            .padding(.top, 8)
        }
        .padding(.horizontal, 20)
        .padding(.top, 10)
        .padding(.bottom, 20)
    }
}

#Preview {
    ZStack {
        Color.black
            .ignoresSafeArea()
        
        VStack {
            ConversionProgressBar(currentStep: 5)
            Spacer()
        }
    }
}
