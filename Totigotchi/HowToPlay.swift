//
//  HowToPlay.swift
//  Totigotchi
//
//  Created by Caroline Taus on 22/07/21.
//

import Foundation
import SpriteKit

class HowToPlay: SKNode {
    
    var bg: SKSpriteNode = SKSpriteNode(color: .black, size: .screenSize())
    var bgHTP: SKShapeNode = SKShapeNode(rectOf: CGSize(width: 300, height: 600))
    var closeButton: SKSpriteNode = SKSpriteNode(imageNamed: "butX_normal")
    var closeButtonTextures: [SKTexture] = [SKTexture(imageNamed: "butX_normal"), SKTexture(imageNamed: "butX_pressed")]
    var closeButtonAction: (() -> Void)?
    
    override init() {
        super.init()
        addChild(bg)
        addChild(bgHTP)
        bgHTP.addChild(closeButton)
        bg.alpha = 0.55
        bgHTP.fillColor = .white
        closeButton.setScale(0.11)
        bg.zPosition = 300
        bgHTP.zPosition = 301
        closeButton.zPosition = 302
        closeButton.name = "close"
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var isUserInteractionEnabled: Bool {
        set {
            // ignore
        }
        get {
            return true
        }
    }
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let location = touch.location(in: self)
            let touchedNodes = self.nodes(at: location)
            for node in touchedNodes.reversed() {
                if node.name == "close" {
                    closeButton.texture = closeButtonTextures[1]
                }
            }
        }
    }
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let location = touch.location(in: self)
            let touchedNodes = self.nodes(at: location)
            for node in touchedNodes.reversed() {
                if node.name == "close" {
                    guard let action = closeButtonAction else {return}
                    action()
                    closeButton.texture = closeButtonTextures[0]
                }
            }
            
        }
    }
    
}
