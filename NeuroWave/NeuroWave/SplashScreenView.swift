//
//  SplashScreenView.swift
//  NeuroWave
//
//  Created by Ashrith Ponna on 5/25/24.
//

import SwiftUI
import AVFoundation

struct SplashScreenView: View {
    @State var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    // Customise your SplashScreen here
    var body: some View {
        if isActive {
            LoginPage()
        } else {
            VStack {
                VStack {
                    Image(systemName: "brain.fill")
                        .font(.system(size: 80))
                        .foregroundColor(.blue)
                    Text("NeuroWave")
                        .font(Font.custom("Baskerville-Bold", size: 26))
                        .foregroundColor(.black.opacity(0.80))
                    Text("Learn about your brain. Get your gain.")
                        .font(Font.custom("Baskerville-Italic", size: 19))
                        .foregroundColor(.black.opacity(0.80))
                    Text(" ")
                        .font(Font.custom("Baskerville-Bold", size: 3))
                        .foregroundColor(.black.opacity(0.80))
                    Text("Est. 2024")
                        .font(Font.custom("Baskerville-Bold", size: 13))
                        .foregroundColor(.black.opacity(0.80))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.00
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
