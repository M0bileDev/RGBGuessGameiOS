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
    @State var displayAlert = false

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
                displayAlert = true
                game.checkResult()
            }
            .alert(isPresented: $displayAlert) {
                Alert(
                    title: Text("Your Score"),
                    message: Text(String(game.scoreRound)),
                    dismissButton: .default(Text("OK")) {
                        game.startNewRound()
                        guess = Rgb()
                    }
                )
            }
        }

    }
}

#Preview {
    ContentView(guess: Rgb())
}
