//
//  EmojiMemoryGame.swift
//  memorygame
//
//  Created by Igor Camara on 17/04/21.
//
// this is my ViewModel

import SwiftUI

class EmojiMemoryGame {
    private(set) var memoryGameModel: MemoryGame<String> = createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        // 1. Have the emoji on your cards be randomly chosen from a larger set of emoji (at least a dozen). In other words, don’t always use the same five emoji in every game.
        let emojis = ["👻", "🎃", "🕷", "🦇", "💀"]
        let randomNumberOfPairsOfCards = Int.random(in: 2...emojis.count)
        print(emojis.count)
        return MemoryGame<String>(numberOfPairsOfCards: randomNumberOfPairsOfCards){ pairIndex in
            print(pairIndex)
            return emojis[pairIndex]
        }
    }
        
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        // one line returns don't need the "return" keyword
        memoryGameModel.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card){
        memoryGameModel.choose(card: card)
    }
}
