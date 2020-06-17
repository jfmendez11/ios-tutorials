//
//  EmojiArtView.swift
//  EmojiArt
//
//  Created by Juan Felipe Méndez on 17/06/20.
//  Copyright © 2020 Juan Felipe Méndez. All rights reserved.
//

import UIKit

class EmojiArtView: UIView {
    
    var backgroundImage: UIImage? { didSet { setNeedsDisplay() } }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        backgroundImage?.draw(in: bounds)
    }

}
