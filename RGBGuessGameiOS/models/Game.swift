//
//  Game.swift
//  RGBGuessGameiOS
//
//  Created by Damian Ogórek on 06/06/2026.
//

import Foundation

struct Game {
    let userRgb = Rgb()
    var targetRgb = Rgb.createRandomRgb()
    var round = 1
    var scoreRound = 0
    var scoreTotal = 0
}
