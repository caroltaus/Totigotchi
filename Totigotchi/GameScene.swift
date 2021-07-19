//
//  GameScene.swift
//  Totigotchi
//
//  Created by Caroline Taus on 19/07/21.
//

import Foundation
import SpriteKit

public class GameScene: SKScene {
    
    var buttonsBar: SKShapeNode = SKShapeNode(rectOf: CGSize(width: 800, height: 200))
    var center: CGPoint = CGPoint()
    var toti: SKSpriteNode = SKSpriteNode(imageNamed: "sprite_TotiIdleHappy00")
    var butQuest: SKSpriteNode = SKSpriteNode(imageNamed: "butQuest_normal")
    
    
    
    public override func didMove(to view: SKView) {
        super.didMove(to: view)
        backgroundColor = #colorLiteral(red: 0.9227683544, green: 0.9586974978, blue: 0.9140693545, alpha: 1)
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        addChild(buttonsBar)
        addChild(toti)
        addChild(butQuest)
        
        
        center = CGPoint(x: size.width/2, y: size.height/2)
        
        buttonsBar.fillColor = #colorLiteral(red: 0.8415967226, green: 0.9332836866, blue: 0.8614316583, alpha: 1)
        buttonsBar.lineWidth = 0
        
        toti.setScale(0.12)
        butQuest.setScale(0.1)
    }
    
    public override func didChangeSize(_ oldSize: CGSize) {
        // setting positions
        buttonsBar.position.y = -self.size.height/2
        toti.position.y = -self.size.height/2 + buttonsBar.frame.height + toti.size.height/10
        butQuest.position = CGPoint(x: self.size.width/2 - butQuest.size.width/2 - 16, y: self.size.height/2 - butQuest.size.height)
        
    }

    
}
