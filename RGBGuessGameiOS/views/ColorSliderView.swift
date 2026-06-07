//
//  ColorSliderView.swift
//  RGBGuessGameiOS
//
//  Created by Damian Ogórek on 07/06/2026.
//

import SwiftUI

struct ColorSliderView: View {
    @Binding var value: Double
    var trackColor: Color

    var body: some View {
        HStack {
            Text("0")
            Slider(value: $value)
                .accentColor(trackColor)
            Text("255")
        }
    }
}

#Preview {
    ColorSliderView(value: .constant(0.5), trackColor: .red)
}
