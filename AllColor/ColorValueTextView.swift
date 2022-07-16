//
//  ColorValueTextView.swift
//  AllColor
//
//  Created by leila on 16.07.2022.
//

import SwiftUI

struct ColorValueTextView: View {
    
    let value: Double
    
    var body: some View {
        Text("\(lround(value))")
            .frame(width: 35, alignment: .leading)
            .foregroundColor(.white)
    }
}

struct ColorValueTextView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray
            ColorValueTextView(value: 128)
        }
    }
}
