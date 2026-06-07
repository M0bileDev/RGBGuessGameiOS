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
            Text("R: ??? G: ??? B: ???")
                .padding()
            Slider(value: .constant(0.5))
            Button("Hit me!") {
                //todo: add check action logic
            }
        }

    }
}

#Preview {
    ContentView(guess: Rgb())
}
