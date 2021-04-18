//
//  MemoryGame.swift
//  memorygame
//
//  Created by Igor Camara on 17/04/21.
//
// this is my model

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    var numberOfPairsOfCards: Int
    
    func choose(card: Card){
        print("card chosen: \(card)")
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent){
        cards = Array<Card>()
        self.numberOfPairsOfCards = numberOfPairsOfCards

        // for 0 to 1, 2 until (not including) numberOfPairOfCards
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
        cards.shuffle()
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
