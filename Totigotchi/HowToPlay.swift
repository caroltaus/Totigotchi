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
    var bgHTP: SKShapeNode = SKShapeNode(rectOf: CGSize(width: 320, height: 600))
    var closeButton: SKSpriteNode = SKSpriteNode(imageNamed: "butX_normal")
    var closeButtonTextures: [SKTexture] = [SKTexture(imageNamed: "butX_normal"), SKTexture(imageNamed: "butX_pressed")]
    var closeButtonAction: (() -> Void)?
    var HTPTitle: SKLabelNode = SKLabelNode(fontNamed: "Kongtext")
    var HTPText: SKLabelNode = SKLabelNode(fontNamed: "Kongtext")
    var AbtTitle: SKLabelNode = SKLabelNode(fontNamed: "Kongtext")
    var AbtText: SKLabelNode = SKLabelNode(fontNamed: "Kongtext")
    
    override init() {
        super.init()
        addChild(bg)
        addChild(bgHTP)
        bgHTP.addChild(closeButton)
        bgHTP.addChild(HTPTitle)
        bgHTP.addChild(HTPText)
        bgHTP.addChild(AbtTitle)
        bgHTP.addChild(AbtText)
        bg.alpha = 0.55
        bgHTP.fillColor = .white
        closeButton.setScale(0.11)
        bg.zPosition = 300
        bgHTP.zPosition = 301
        
        closeButton.zPosition = 302
        closeButton.name = "close"
        closeButton.position = CGPoint(x: 150, y: 290)
        
        HTPTitle.fontColor = .black
        HTPTitle.text = "How To Play"
        HTPTitle.fontSize = 21
        HTPTitle.position = CGPoint(x: 0, y: 270)
        
        HTPText.fontColor = .black
        HTPText.text = "To take care of your Toti pay attention to his needs. The status bars on top, if he is sick, and if his litter box is clean. You can attend to them by tapping on Toti, on the buttons at the bottom of the screen and on his litter box. \n\nBy taking good care of him he will be happy and healthy, and love you forever."
        HTPText.numberOfLines = 0
        HTPText.preferredMaxLayoutWidth = 290
        HTPText.fontSize = 16
        HTPText.position = CGPoint(x: 0, y: -90)
        
        AbtTitle.fontColor = .black
        AbtTitle.text = "About Toti"
        AbtTitle.fontSize = 21
        AbtTitle.position = CGPoint(x: 0, y: -130)
        
        AbtText.fontColor = .black
        AbtText.text = "Totigotchi was inspired by the best cat in the world, Prince Nicholas III. You can follow him on instagram @principenicholas."
        AbtText.numberOfLines = 0
        AbtText.preferredMaxLayoutWidth = 290
        AbtText.fontSize = 16
        AbtText.position = CGPoint(x: 0, y: -285)
        
        
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
