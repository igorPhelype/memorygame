//
//  ContentView.swift
//  memorygame
//
//  Created by Igor Camara on 15/04/21.
//

import SwiftUI

struct ContentView: View {
    var emojiMemoryGameViewModel: EmojiMemoryGame
    
    var body: some View {
        HStack {
            ForEach(emojiMemoryGameViewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    emojiMemoryGameViewModel.choose(card: card)
                }
            }
        }
            .foregroundColor(Color.orange)
            .padding()
            .font(
                emojiMemoryGameViewModel.memoryGameModel.numberOfPairsOfCards == 5
                    ? Font.title
                    : Font.largeTitle
            )
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 3)
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                Text(card.content)
            }else{
                RoundedRectangle(cornerRadius: 10)
                    .fill()
            }
        }.aspectRatio(2/3, contentMode: .fit)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(emojiMemoryGameViewModel: EmojiMemoryGame())
    }
}

