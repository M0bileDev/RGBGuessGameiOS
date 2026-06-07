//
//  Rgb.swift
//  RGBGuessGameiOS
//
//  Created by Damian Ogórek on 06/06/2026.
//

import Foundation

struct Rgb {
    var red = 0.5
    var green = 0.5
    var blue = 0.5

    static func createRandomRgb() -> Rgb {
        let red = Double.random(in: 0..<1)
        let green = Double.random(in: 0..<1)
        let blue = Double.random(in: 0..<1)

        return Rgb(red: red, green: green, blue: blue)
    }

    // Function measures how different two colors are, basically the distance between them in RGB (3d) space
    func difference(target: Rgb) -> Double {
        let sum =
            squared(red - target.red)
            + squared(green - target.green)
            + squared(blue - target.blue)

        return sqrt(sum / 3.0)
    }

    func squared(_ x: Double) -> Double { x * x }
}

extension Rgb: CustomStringConvertible {
    // Rescales from the fraction system to the byte system
    var description: String {
        "Rgb(red: \(red * 255.0), green: \(green * 255.0), blue: \(blue * 255.0))"
    }
}
