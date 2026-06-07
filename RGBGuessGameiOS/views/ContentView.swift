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
            Color(red: 0.5, green: 0.5, blue: 0.5)
            Text("R: ??? G: ??? B: ???")
                .padding()
            Color(red: 0.5, green: 0.5, blue: 0.5)
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
