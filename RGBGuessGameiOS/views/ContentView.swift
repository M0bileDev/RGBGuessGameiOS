//
//  ContentView.swift
//  RGBGuessGameiOS
//
//  Created by Damian Ogórek on 06/06/2026.
//

import SwiftUI

struct ContentView: View {
    @State var game = Game()
    @State var guess = Rgb()

    var body: some View {
        VStack {
            Color(rgbStruct: game.targetRgb)
            Text("R: ??? G: ??? B: ???")
                .padding()
            Color(rgbStruct: guess)
            Text("\(guess.description)")
                .padding()
            ColorSliderView(value: $guess.red, trackColor: .red)
            ColorSliderView(value: $guess.green, trackColor: .green)
            ColorSliderView(value: $guess.blue, trackColor: .blue)
            Button("Hit me!") {
                //todo: add check action logic
            }
        }

    }
}

#Preview {
    ContentView(guess: Rgb())
}
