//
//  Rgb.swift
//  RGBGuessGameiOS
//
//  Created by Damian Ogórek on 06/06/2026.
//

import Foundation

struct Rgb {
    var red = 0.0
    var green = 0.0
    var blue = 0.0

    static func createRandomRgb() -> Rgb {
        let red = Double.random(in: 0..<1)
        let green = Double.random(in: 0..<1)
        let blue = Double.random(in: 0..<1)

        return Rgb(red: red, green: green, blue: blue)
    }

}
