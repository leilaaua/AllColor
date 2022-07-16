//
//  ContentView.swift
//  AllColor
//
//  Created by leila on 16.07.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sliderValue = Double.random(in: 0...255)
    
    @State private var redSlider = 1.0
    @State private var greenSlider = 1.0
    @State private var blueSlider = 1.0
    
    private func editColor() {
        sliderValue = redSlider
        sliderValue = greenSlider
        sliderValue = blueSlider
    }
    
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
                ColorTextView(value: $sliderValue)
                    
                ColorSliderView(redValue: $redSlider, greenValue: $greenSlider, blueValue: $blueSlider)
                    
                ColorTextFieldView(value: $sliderValue)
                    
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

struct ColorTextFieldView: View {
    
    @Binding var value: Double
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("", value: $value, formatter: NumberFormatter())
                .style()
            TextField("", value: $value, formatter: NumberFormatter())
                .style()
            TextField("", value: $value, formatter: NumberFormatter())
                .style()
        }
        .padding()
    }
}

struct ColorSliderView: View {
    
    @Binding var redValue: Double
    @Binding var greenValue: Double
    @Binding var blueValue: Double
    
    var body: some View {
        VStack(spacing: 20){
            Slider(value: $redValue, in: 0...255, step: 1)
                .tint(.red)
            Slider(value: $greenValue, in: 0...255, step: 1)
                .tint(.green)
            Slider(value: $blueValue, in: 0...255, step: 1)
                .tint(.blue)
        }
    }
}

struct ColorTextView: View {
    
    @Binding var value: Double
    
    var body: some View {
            VStack(spacing: 30) {
                Text("\(lround(value))").foregroundColor(.white)
                Text("\(lround(value))").foregroundColor(.white)
                Text("\(lround(value))").foregroundColor(.white)
            }
            .padding()
    }
}

struct TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 40, height: 30)
            .textFieldStyle(.roundedBorder)
            .keyboardType(.decimalPad)
    }
}

extension TextField {
    func style() -> some View {
        ModifiedContent(content: self, modifier: TextFieldModifier())
    }
}
