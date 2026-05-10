//
//  HomeView.swift
//  NeuroWave
//
//  Created by Ashrith Ponna on 5/25/24.
//

import SwiftUI

struct HomeView: View {
    
    @State private var animateGradient: Bool = false
    
    private let startColor: Color = .blue
    private let endColor: Color = .green
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "brain")
                .font(.system(size: 72, weight: .light))
                .padding(.top, 80)
                .padding(.bottom, 64)
            
            Text("Setting Things Up...")
                .font(.title)
                .bold()
            
            Text("Please wait as our servers substantiate code.")
                .fontWeight(.thin)
            Text("")
                .fontWeight(.thin)
            Text("")
                .fontWeight(.thin)
            
            NavigationLink("Skip Substantiation", destination: Analysis())
            
            Spacer()
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .foregroundColor(.black)
        .padding(.horizontal)
        .multilineTextAlignment(.center)
        .background {
            LinearGradient(colors: [startColor, endColor], startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
                .hueRotation(.degrees(animateGradient ? 45 : 0))
                .onAppear {
                    withAnimation(.easeInOut(duration: 3).repeatCount(12)) {
                        animateGradient.toggle()
                    }
                }
        }
    }
}

struct GradientBackgroundAnimation_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
