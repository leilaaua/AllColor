//
//  ContentView.swift
//  AllColor
//
//  Created by leila on 16.07.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redSlider = 1.0
    @State private var greenSlider = 1.0
    @State private var blueSlider = 1.0
    
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Color(red: redSlider, green: greenSlider, blue: blueSlider, opacity: 1)
                    .frame(width: 350, height: 150)
                    .cornerRadius(20)
                .padding()
                
                HStack(spacing: 20) {
                    VStack(spacing: 20) {
                        Text("1")
                        Text("2")
                        Text("3")
                    }
                    .padding()
                    
                    VStack(spacing: 20){
                        Slider(value: $redSlider)
                            .tint(.red)
                        Slider(value: $greenSlider)
                            .tint(.green)
                        Slider(value: $blueSlider)
                            .tint(.blue)
                    }
                    
                    VStack(spacing: 20) {
                        TextField("", value: $redSlider, formatter: NumberFormatter())
                            .frame(width: 40, height: 30)
                            .textFieldStyle(.roundedBorder)
                        TextField("", value: $redSlider, formatter: NumberFormatter())
                            .frame(width: 40, height: 30)
                            .textFieldStyle(.roundedBorder)
                        TextField("", value: $redSlider, formatter: NumberFormatter())
                            .frame(width: 40, height: 30)
                            .textFieldStyle(.roundedBorder)
                    }
                    .padding()
                }
                
                Spacer()
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
