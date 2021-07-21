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
    var toti: SKSpriteNode = SKSpriteNode(imageNamed: "totiHappy_0")
    var butQuest: SKSpriteNode = SKSpriteNode(imageNamed: "butQuest_normal")
    var hungerBar: SKSpriteNode = SKSpriteNode(imageNamed: "hungerBar100")
    var funBar: SKSpriteNode = SKSpriteNode(imageNamed: "funBar100")
    var loveBar: SKSpriteNode = SKSpriteNode(imageNamed: "loveBar100")
    var energyBar: SKSpriteNode = SKSpriteNode(imageNamed: "energyBar100")
    var foodButton: SKSpriteNode = SKSpriteNode(imageNamed: "butFood_normal")
    var funButton: SKSpriteNode = SKSpriteNode(imageNamed: "butFun_normal")
    var sleepButton: SKSpriteNode = SKSpriteNode(imageNamed: "butSleep_normal")
    var medButton: SKSpriteNode = SKSpriteNode(imageNamed: "butMed_normal")
    var litter: SKSpriteNode = SKSpriteNode(imageNamed: "litter_clean")
    
    
    public override func didMove(to view: SKView) {
        super.didMove(to: view)
        backgroundColor = #colorLiteral(red: 0.9227683544, green: 0.9586974978, blue: 0.9140693545, alpha: 1)
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        addChild(buttonsBar)
        addChild(toti)
        addChild(butQuest)
        addChild(hungerBar)
        addChild(loveBar)
        addChild(energyBar)
        addChild(funBar)
        buttonsBar.addChild(foodButton)
        buttonsBar.addChild(funButton)
        buttonsBar.addChild(sleepButton)
        buttonsBar.addChild(medButton)
        addChild(litter)
        
        
        
        buttonsBar.fillColor = #colorLiteral(red: 0.8415967226, green: 0.9332836866, blue: 0.8614316583, alpha: 1)
        buttonsBar.lineWidth = 0
        toti.name = "toti"
        butQuest.name = "question"
        litter.name = "litter"
        foodButton.name = "food"
        funButton.name = "fun"
        sleepButton.name = "sleep"
        medButton.name = "med"
        
        
        toti.setScale(0.12)
        butQuest.setScale(0.11)
        hungerBar.setScale(0.08)
        funBar.setScale(0.08)
        loveBar.setScale(0.08)
        energyBar.setScale(0.08)
        foodButton.setScale(0.052)
        funButton.setScale(0.052)
        sleepButton.setScale(0.052)
        medButton.setScale(0.052)
        litter.setScale(0.09)
    }
    
    public override func didChangeSize(_ oldSize: CGSize) {
        
        // --- setting positions ---
        
        buttonsBar.position.y = -self.size.height/2
        toti.position.y = -self.size.height/2 + buttonsBar.frame.height + 16
        toti.zPosition = -1
        butQuest.position = CGPoint(x: self.size.width/2 - butQuest.size.width/2 - 8, y: self.size.height/2 - butQuest.size.height/2 - 32)
        
        hungerBar.position = CGPoint(x: -self.size.width/4.5, y: butQuest.position.y - hungerBar.size.height)
        energyBar.position = CGPoint(x: hungerBar.position.x, y: hungerBar.position.y - hungerBar.size.height)
        funBar.position = CGPoint(x: self.size.width/4.5, y: hungerBar.position.y)
        loveBar.position = CGPoint(x: funBar.position.x, y: energyBar.position.y)
        
        let margin: CGFloat = 16
        var posiBut: CGPoint = CGPoint(x: 0, y: buttonsBar.frame.size.height/2 - foodButton.size.height/2 + 4)
        let deltaPos: CGFloat = (self.size.width - (2 * margin)) / 4
        posiBut.x = (margin + deltaPos) - self.size.width/2 - foodButton.size.width/2
        print(self.size.width)
        print(posiBut)
        foodButton.position = posiBut
        posiBut.x += deltaPos
        funButton.position = posiBut
        posiBut.x += deltaPos
        sleepButton.position = posiBut
        posiBut.x += deltaPos
        medButton.position = posiBut
                
        litter.position = CGPoint(x: 120, y: 0)
        
        
        
        idleAnimation()
        
        
        
    }

    public func idleAnimation(){
        let texHappy: [SKTexture] = [
            SKTexture(imageNamed: "totiHappy_0"),
            SKTexture(imageNamed: "totiHappy_0"),
            SKTexture(imageNamed: "totiHappy_0"),
            SKTexture(imageNamed: "totiHappy_0"),
            SKTexture(imageNamed: "totiHappy_0"),
            SKTexture(imageNamed: "totiHappy_0"),
            SKTexture(imageNamed: "totiHappy_0"),
            SKTexture(imageNamed: "totiHappy_0"),
            SKTexture(imageNamed: "totiHappy_0"),
            SKTexture(imageNamed: "totiHappy_0"),
            SKTexture(imageNamed: "totiHappy_0"),
            SKTexture(imageNamed: "totiHappy_0"),
            SKTexture(imageNamed: "totiHappy_0"),
            SKTexture(imageNamed: "totiHappy_1"),
            SKTexture(imageNamed: "totiHappy_2"),
            SKTexture(imageNamed: "totiHappy_3"),
            SKTexture(imageNamed: "totiHappy_4"),
            SKTexture(imageNamed: "totiHappy_5")
        ]
        
        for t in texHappy {
            t.filteringMode = .nearest
        }
        
        let happyIdle = SKAction.animate(with: texHappy, timePerFrame: 0.1)
        
        let happyLoop = SKAction.repeatForever(happyIdle)
        toti.run(happyLoop)
    }
        
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let scene = self
        if let touch = touches.first {
            let location = touch.location(in: scene)
            let touchedNodes = scene.nodes(at: location)
            for node in touchedNodes.reversed() {
                if node.name == "question" {
                    print("clicado")
                }
                else if node.name == "toti" {
                 
                  
                }
                else if node.name == "litter"{
            
                }
            }
        }
    }
    
    
    public override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let scene = self
        if let touch = touches.first {
            let location = touch.location(in: scene)
            let touchedNodes = scene.nodes(at: location)
            for node in touchedNodes.reversed() {
                if node.name == "question" {
                    print("parei de clicar")
                }
                else if node.name == "fun" {
                    print("toti")
                    let texPlaying: [SKTexture] = [
                        SKTexture(imageNamed: "totiPlay_0"),
                        SKTexture(imageNamed: "totiPlay_1"),
                        SKTexture(imageNamed: "totiPlay_2"),
                        SKTexture(imageNamed: "totiPlay_3")
                        
                    ]
                    
                    for t in texPlaying {
                        t.filteringMode = .nearest
                    }
                    
                    let playing = SKAction.animate(with: texPlaying, timePerFrame: 0.2)
                    
                    let playingLoop = SKAction.repeat(playing, count: 3)
                    
                    toti.run(playingLoop, completion: {
                        self.idleAnimation()
                    })
                    
                  
                }
                else if node.name == "litter"{
                    print("caixinah")
                }
            }
        }
    }
    
}
