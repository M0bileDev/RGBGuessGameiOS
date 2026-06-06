//
//  ColorExtension.swift
//  RGBGuessGameiOS
//
//  Created by Damian Ogórek on 06/06/2026.
//

import Foundation
import SwiftUI

extension Color {
    init(rgbStruct rgb: Rgb) {
        self.init(red: rgb.red, green: rgb.green, blue: rgb.blue)
    }
}
