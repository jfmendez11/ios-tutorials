//
//  Card.swift
//  Concentration
//
//  Created by Juan Felipe Méndez on 8/06/20.
//  Copyright © 2020 Juan Felipe Méndez. All rights reserved.
//

import Foundation

struct Card {
    var isFaceUp = false
    var isMathced = false
    var identifier: Int
    
    private static var identifierFactory = 0
    
    private  static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
