//
//  Analysis.swift
//  NeuroWave
//
//  Created by Ashrith Ponna on 5/25/24.
//

import SwiftUI

struct Analysis: View {
    
    @State private var animateGradient: Bool = false
    @State var brainInput: String = ""
    @State var output: String = ""
    
    private let startColor: Color = .blue
    private let endColor: Color = .green
    
    func image(){
        if brainInput == "Sleep"{
            output = "f(x) = 1/10sin(100x-1)"
        }else if brainInput == "Awake"{
            output = "f(x) = 1sin(4x-3)"
        }else{
            output = "Enter a valid prompt!"
        }
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "brain")
                .font(.system(size: 72, weight: .light))
                .padding(.top, 80)
                .padding(.bottom, 64)
            
            Text("Enter a keyword below.")
                .font(.title)
                .bold()
            
            
            
            Text("Property of the WaveAI™ Corporation.")
                .fontWeight(.thin)
            
            Text(" ")
                .fontWeight(.thin)
            
            Text("Welcome to the simulation phase for NeuroWave. To get started with your simulation, please enter respective key words in the textbox below that relate to the sinusoidal function you are trying to view.              ")
                .fontWeight(.thin)
            
            Text(" ")
                .fontWeight(.thin)
            
            TextField("Enter Keyword", text: $brainInput)
                .padding()
                .background(Color.white)
                .foregroundColor(Color.black)
            Button(action: {image()})
            {Text("Submit")
                    .padding()
                    .cornerRadius(40)
               
            }
            
            Text("Result: " + output)
                .font(.title2)

                .fontWeight(.bold)
                
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
    
    struct Analysis_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
}
