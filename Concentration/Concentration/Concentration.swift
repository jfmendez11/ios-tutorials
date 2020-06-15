//
//  Concentration.swift
//  Concentration
//
//  Created by Juan Felipe Méndez on 8/06/20.
//  Copyright © 2020 Juan Felipe Méndez. All rights reserved.
//

import Foundation

struct Concentration {
    private(set) var cards = [Card]()
    
    private var indexOfOneAndOnlyFaceUpCard: Int? {
        get {
            return cards.indices.filter { cards[$0].isFaceUp }.theOneAndOnly
        }
        set {
            for index in cards.indices {
                cards[index].isFaceUp = (index == newValue)
            }
        }
    }
    
    mutating func chooseCard(at index: Int) {
        assert(cards.indices.contains(index), "Concentration.chooseCard(at:\(index): Choosen index not in the cards")
        if !cards[index].isMathced {
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index {
                // check if cards match
                if cards[matchIndex] == cards[index] {
                    cards[matchIndex].isMathced = true
                    cards[index].isMathced = true
                }
                cards[index].isFaceUp = true
            } else {
                //either no cards or 2 cards are face up
                indexOfOneAndOnlyFaceUpCard = index
            }
        }
    }
    
    init(numberOfPairsOfCards: Int) {
        assert(numberOfPairsOfCards > 0, "Concentration.init(numberOfPairsOfCards:\(numberOfPairsOfCards): You must have at least one pair of cards")
        for _ in 0..<numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
    }
}

extension Collection {
    var theOneAndOnly: Element? {
        return count == 1 ? first : nil
    }
}
