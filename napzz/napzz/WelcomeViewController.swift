//
//  WelcomeViewController.swift
//  napzz
//
//  Created by Morris Romagnoli on 04/07/2025.
//

import SwiftUI

struct WelcomeViewController: View {
    @State private var goToNextPage = false

    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Text("Welcome to napzz!")
                    .font(.largeTitle)
                    .padding()

                Spacer()

                Button(action: {
                    goToNextPage = true
                }) {
                    Text("Continue")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(12)
                        .padding(.horizontal)
                }
                .padding(.bottom, 40)
            }
            // This is the new way to navigate programmatically
            .navigationDestination(isPresented: $goToNextPage) {
                ConversionPage1()
            }
        }
    }
}

