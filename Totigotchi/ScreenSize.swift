//
//  ScreenSize.swift
//  Totigotchi
//
//  Created by Caroline Taus on 22/07/21.
//

import Foundation
import SpriteKit

extension CGSize {
    static func screenSize(widthMultiplier: CGFloat = 1, heighMultiplier:CGFloat = 1) -> CGSize {
        
        CGSize(width: UIScreen.main.bounds.size.width*widthMultiplier, height: UIScreen.main.bounds.size.height*heighMultiplier)
    }
}
