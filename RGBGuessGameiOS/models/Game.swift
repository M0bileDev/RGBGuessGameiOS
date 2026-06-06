//
//  Game.swift
//  RGBGuessGameiOS
//
//  Created by Damian Ogórek on 06/06/2026.
//

import Foundation

struct Game {
    var userRgb = Rgb()
    var targetRgb = Rgb.createRandomRgb()
    var round = 1
    var scoreRound = 0
    var scoreTotal = 0

    mutating func startNewGame() {
        round = 0
        scoreTotal = 0
        startNewRound()
    }

    mutating func startNewRound() {
        round += 1
        scoreRound = 0
        targetRgb = Rgb.createRandomRgb()
        userRgb = Rgb()
    }
}
