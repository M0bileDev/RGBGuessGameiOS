# 🎨 RGB Guess Game (iOS)

A quick, fun color-matching game built with **SwiftUI**. A random target color appears on screen — your job is to move the three RGB sliders until your guess matches it as closely as possible. The closer you get, the higher your score.

## 🎯 Purpose

A small, focused project to practice core **SwiftUI** building blocks: state management, two-way bindings, reusable views, and a clean separation between game logic and UI. Built for fun and learning, not for the App Store.

## 🕹️ How to Play

- 🎲 A random target color is shown in the top circle (its RGB values are hidden).
- 🎚️ Move the **Red**, **Green**, and **Blue** sliders to recreate that color.
- 👇 Tap **Hit me!** to reveal the target and see your round score.
- 🔁 Tap **OK** to start a new round with a fresh color.

Scoring is based on the distance between your guess and the target in 3D RGB space — a perfect or near-perfect match earns bonus points.

## 🛠️ Tech Stack

| Area | Technology |
| --- | --- |
| Language | Swift |
| UI | SwiftUI |
| State | `@State`, `@Binding` (value-type models) |
| Min. iOS | 26.2 |
| IDE | Xcode |

## 📂 Project Structure

```
RGBGuessGameiOS/
├── RGBGuessGameiOSApp.swift      # App entry point
├── models/
│   ├── Game.swift                # Game state, rounds & scoring logic
│   └── Rgb.swift                 # Color model: random colors + distance math
├── views/
│   ├── ContentView.swift         # Main game screen
│   └── ColorSliderView.swift     # Reusable RGB slider
└── extensions/
    └── ColorExtension.swift      # Build a SwiftUI Color from an Rgb model
```

## 🧠 How It Works

- **`Rgb`** holds three channel values (`0...1`) and can generate a random color. Its `difference(target:)` measures how far two colors are using the Euclidean distance in RGB space.
- **`Game`** owns the round flow (`startNewRound`, `checkResult`) and turns the color distance into a score, with bonuses for very close matches.
- **`ColorSliderView`** is a small reusable component — one slider per channel, tinted to its color.
- **`Color(rgbStruct:)`** bridges the plain `Rgb` model into a SwiftUI `Color` for rendering.

## 🚀 Getting Started

1. Clone the repo:
   ```bash
   git clone https://github.com/M0bileDev/RGBGuessGameiOS.git
   ```
2. Open `RGBGuessGameiOS.xcodeproj` in Xcode.
3. Pick a simulator (or your device) and press **Run** (`⌘R`).

## 👤 Author

**Damian Ogórek** — [M0bileDev](https://github.com/M0bileDev)
