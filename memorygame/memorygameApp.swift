//
//  memorygameApp.swift
//  memorygame
//
//  Created by Igor Camara on 15/04/21.
//

import SwiftUI

@main
struct memorygameApp: App {
    var body: some Scene {
        WindowGroup {
            // initializing the view model
            let game = EmojiMemoryGame()
            ContentView(emojiMemoryGameViewModel: game)
        }
    }
}
