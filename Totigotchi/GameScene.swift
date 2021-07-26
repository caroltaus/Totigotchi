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
    var hungerBarTex: [SKTexture] = [SKTexture(imageNamed: "hungerBar0"),
                                   SKTexture(imageNamed: "hungerBar10"),
                                   SKTexture(imageNamed: "hungerBar20"),
                                   SKTexture(imageNamed: "hungerBar30"),
                                   SKTexture(imageNamed: "hungerBar40"),
                                   SKTexture(imageNamed: "hungerBar50"),
                                   SKTexture(imageNamed: "hungerBar60"),
                                   SKTexture(imageNamed: "hungerBar70"),
                                   SKTexture(imageNamed: "hungerBar80"),
                                   SKTexture(imageNamed: "hungerBar90"),
                                   SKTexture(imageNamed: "hungerBar100")
    ]
    var funBar: SKSpriteNode = SKSpriteNode(imageNamed: "funBar100")
    var funBarTex: [SKTexture] = [ SKTexture(imageNamed: "funBar0"),
                                   SKTexture(imageNamed: "funBar10"),
                                   SKTexture(imageNamed: "funBar20"),
                                   SKTexture(imageNamed: "funBar30"),
                                   SKTexture(imageNamed: "funBar40"),
                                   SKTexture(imageNamed: "funBar50"),
                                   SKTexture(imageNamed: "funBar60"),
                                   SKTexture(imageNamed: "funBar70"),
                                   SKTexture(imageNamed: "funBar80"),
                                   SKTexture(imageNamed: "funBar90"),
                                   SKTexture(imageNamed: "funBar100")
    ]
    var loveBar: SKSpriteNode = SKSpriteNode(imageNamed: "loveBar100")
    var loveBarTex: [SKTexture] = [SKTexture(imageNamed: "loveBar0"),
                                   SKTexture(imageNamed: "loveBar10"),
                                   SKTexture(imageNamed: "loveBar20"),
                                   SKTexture(imageNamed: "loveBar30"),
                                   SKTexture(imageNamed: "loveBar40"),
                                   SKTexture(imageNamed: "loveBar50"),
                                   SKTexture(imageNamed: "loveBar60"),
                                   SKTexture(imageNamed: "loveBar70"),
                                   SKTexture(imageNamed: "loveBar80"),
                                   SKTexture(imageNamed: "loveBar90"),
                                   SKTexture(imageNamed: "loveBar100")
    ]
    var energyBar: SKSpriteNode = SKSpriteNode(imageNamed: "energyBar100")
    var energyBarTex: [SKTexture] = [SKTexture(imageNamed: "energyBar0"),
                                   SKTexture(imageNamed: "energyBar10"),
                                   SKTexture(imageNamed: "energyBar20"),
                                   SKTexture(imageNamed: "energyBar30"),
                                   SKTexture(imageNamed: "energyBar40"),
                                   SKTexture(imageNamed: "energyBar50"),
                                   SKTexture(imageNamed: "energyBar60"),
                                   SKTexture(imageNamed: "energyBar70"),
                                   SKTexture(imageNamed: "energyBar80"),
                                   SKTexture(imageNamed: "energyBar90"),
                                   SKTexture(imageNamed: "energyBar100")
    ]
    var foodButton: SKSpriteNode = SKSpriteNode(imageNamed: "butFood_normal")
    var funButton: SKSpriteNode = SKSpriteNode(imageNamed: "butFun_normal")
    var sleepButton: SKSpriteNode = SKSpriteNode(imageNamed: "butSleep_normal")
    var medButton: SKSpriteNode = SKSpriteNode(imageNamed: "butMed_normal")
    var litter: SKSpriteNode = SKSpriteNode(imageNamed: "litter_clean")
    var fishie: SKSpriteNode = SKSpriteNode(imageNamed: "fish_0")
    var HTP = HowToPlay()
    let defaults = UserDefaults.standard
    var hungerStatus: Int = 5
    var funStatus: Int = 5
    var energyStatus: Int = 5
    var loveStatus: Int = 5
    var greenStatus: Int = 0
    

    
    
    public override func didMove(to view: SKView) {
        super.didMove(to: view)
        backgroundColor = #colorLiteral(red: 0.9227683544, green: 0.9586974978, blue: 0.9140693545, alpha: 1)
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        addChild(HTP)
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
        addChild(fishie)
        
        
        
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
        foodButton.setScale(0.053)
        funButton.setScale(0.053)
        sleepButton.setScale(0.053)
        medButton.setScale(0.053)
        litter.setScale(0.09)
        fishie.setScale(0.06)
        
        print(hungerStatus)
        defaults.set(hungerStatus, forKey: "hunger")
        defaults.set(loveStatus, forKey: "love")
        defaults.set(funStatus, forKey: "fun")
        defaults.set(energyStatus, forKey: "energy")
        
      
        
    }
    
    public override func didChangeSize(_ oldSize: CGSize) {
        
        // --- setting positions ---
        buttonsBar.position.y = -self.size.height/2
        toti.position.y = -self.size.height/2 + buttonsBar.frame.height/2 + toti.size.height/2 + 16
        toti.zPosition = 1
        butQuest.position = CGPoint(x: self.size.width/2 - butQuest.size.width - 8, y: self.size.height/2 - butQuest.size.height - 28)
        
        hungerBar.position = CGPoint(x: -self.size.width/4.5, y: butQuest.position.y - hungerBar.size.height)
        energyBar.position = CGPoint(x: hungerBar.position.x, y: hungerBar.position.y - hungerBar.size.height)
        funBar.position = CGPoint(x: self.size.width/4.5, y: hungerBar.position.y)
        loveBar.position = CGPoint(x: funBar.position.x, y: energyBar.position.y)
        
        let margin: CGFloat = 20
        var posiBut: CGPoint = CGPoint(x: 0, y: buttonsBar.frame.size.height/2 - foodButton.size.height/2 - 4)
        let deltaPos: CGFloat = (self.size.width - (2 * margin)) / 4
        posiBut.x = (margin + deltaPos) - self.size.width/2 - foodButton.size.width/2 - 6
        
        foodButton.position = posiBut
        posiBut.x += deltaPos
        funButton.position = posiBut
        posiBut.x += deltaPos
        sleepButton.position = posiBut
        posiBut.x += deltaPos
        medButton.position = posiBut
                
        litter.position = CGPoint(x: 120, y: 0)
        
        
        fishie.position = CGPoint(x: toti.position.x, y: toti.position.y - 28)
        fishie.zPosition = 2
        
        HTP.isHidden = true
        HTP.closeButtonAction = {
            self.HTP.isHidden = true
        }
        
        
        idleAnimation()
        updateBars()
        
        
        
    }
    
    public func statusColors() -> Int{
        greenStatus = 0
        hungerStatus = self.defaults.integer(forKey: "hunger")
        funStatus = self.defaults.integer(forKey: "fun")
        energyStatus = self.defaults.integer(forKey: "energy")
        loveStatus = self.defaults.integer(forKey: "love")
        
        if hungerStatus >= 7 {
            greenStatus += 1
        }
        
        if funStatus >= 7 {
            greenStatus += 1
        }
       

        if energyStatus >= 7 {
            greenStatus += 1
        }
 

        if loveStatus >= 7 {
            greenStatus += 1
        }
        
        return greenStatus

    }

    public func idleAnimation(){
        fishie.isHidden = true
        
        greenStatus = statusColors()
        
        if greenStatus >= 3 {
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
        
        else if greenStatus == 2 {
            let texSad: [SKTexture] = [
                SKTexture(imageNamed: "sad_00"),
                SKTexture(imageNamed: "sad_01"),
                SKTexture(imageNamed: "sad_02"),
                SKTexture(imageNamed: "sad_03"),
                SKTexture(imageNamed: "sad_04"),
                SKTexture(imageNamed: "sad_05"),
                SKTexture(imageNamed: "sad_06"),
                SKTexture(imageNamed: "sad_07"),
                SKTexture(imageNamed: "sad_08"),
                SKTexture(imageNamed: "sad_09"),
                SKTexture(imageNamed: "sad_10"),
                SKTexture(imageNamed: "sad_11"),
                SKTexture(imageNamed: "sad_12"),
                SKTexture(imageNamed: "sad_13"),
                SKTexture(imageNamed: "sad_14"),
                SKTexture(imageNamed: "sad_15"),
            ]
            
            for t in texSad {
                t.filteringMode = .nearest
            }
            
            let sadIdle = SKAction.animate(with: texSad, timePerFrame: 0.1)
            
            let sadLoop = SKAction.repeatForever(sadIdle)
            toti.run(sadLoop)
            
        }
        
        else {
            let texAngry: [SKTexture] = [
                SKTexture(imageNamed: "angry_00"),
                SKTexture(imageNamed: "angry_00"),
                SKTexture(imageNamed: "angry_00"),
                SKTexture(imageNamed: "angry_00"),
                SKTexture(imageNamed: "angry_00"),
                SKTexture(imageNamed: "angry_00"),
                SKTexture(imageNamed: "angry_00"),
                SKTexture(imageNamed: "angry_00"),
                SKTexture(imageNamed: "angry_01"),
                SKTexture(imageNamed: "angry_02"),
                SKTexture(imageNamed: "angry_03"),
                SKTexture(imageNamed: "angry_04"),
                SKTexture(imageNamed: "angry_05"),
                SKTexture(imageNamed: "angry_06"),
                SKTexture(imageNamed: "angry_07"),
                SKTexture(imageNamed: "angry_08"),
                SKTexture(imageNamed: "angry_09"),
                SKTexture(imageNamed: "angry_10"),
                SKTexture(imageNamed: "angry_11"),
                SKTexture(imageNamed: "angry_12"),
                SKTexture(imageNamed: "angry_13")
            ]
            
            for t in texAngry {
                t.filteringMode = .nearest
            }
            
            let angryIdle = SKAction.animate(with: texAngry, timePerFrame: 0.1)
            
            let angryLoop = SKAction.repeatForever(angryIdle)
            toti.run(angryLoop)
        }
        
            
    }
    
    
    public func updateBars() {
        hungerBar.texture = hungerBarTex[self.defaults.integer(forKey: "hunger")]
        funBar.texture = funBarTex[self.defaults.integer(forKey: "fun")]
        loveBar.texture = loveBarTex[self.defaults.integer(forKey: "love")]
        energyBar.texture = energyBarTex[self.defaults.integer(forKey: "energy")]
    }
        
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let scene = self
        if let touch = touches.first {
            let location = touch.location(in: scene)
            let touchedNodes = scene.nodes(at: location)
            for node in touchedNodes.reversed() {
                if node.name == "question" {
                    butQuest.texture = SKTexture(imageNamed: "butQuest_pressed")
                }
                
                else if node.name == "litter" {
            
                }
                else if node.name == "food" {
                    foodButton.texture = SKTexture(imageNamed: "butFood_pressed")
                }
                else if node.name == "fun" {
                    funButton.texture = SKTexture(imageNamed: "butFun_pressed")
                }
                else if node.name == "sleep" {
                    sleepButton.texture = SKTexture(imageNamed: "butSleep_pressed")
                }
                else if node.name == "med" {
                    medButton.texture = SKTexture(imageNamed: "butMed_pressed")
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
                    butQuest.texture = SKTexture(imageNamed: "butQuest_normal")
                    HTP.isHidden = false
                }
                
                else if node.name == "toti" {
                    
                    loveStatus = self.defaults.integer(forKey: "love")
                    if loveStatus < 10 {
                        defaults.set(loveStatus + 1, forKey: "love")
                    }
                    
                    let texLove: [SKTexture] = [
                        SKTexture(imageNamed: "love_0"),
                        SKTexture(imageNamed: "love_1"),
                        SKTexture(imageNamed: "love_2"),
                        SKTexture(imageNamed: "love_3"),
                        SKTexture(imageNamed: "love_4"),
                        SKTexture(imageNamed: "love_5")
                        
                    ]
                    
                    for t in texLove {
                        t.filteringMode = .nearest
                    }
                    
                    let love = SKAction.animate(with: texLove, timePerFrame: 0.2)
                    let loveLoop = SKAction.repeat(love, count: 1)
                    
                    toti.run(loveLoop, completion: {
                        self.idleAnimation()
                    })
                    
                    updateBars()
                }
                
                else if node.name == "food" {
                    foodButton.texture = SKTexture(imageNamed: "butFood_normal")
                    
                    fishie.isHidden = false
                    
                    hungerStatus = self.defaults.integer(forKey: "hunger")
                    if hungerStatus < 10 {
                        defaults.set(hungerStatus + 1, forKey: "hunger")
                    }
                    
                    let texFish: [SKTexture] = [
                        SKTexture(imageNamed: "fish_0"),
                        SKTexture(imageNamed: "fish_0"),
                        SKTexture(imageNamed: "fish_1"),
                        SKTexture(imageNamed: "fish_2"),
                        SKTexture(imageNamed: "fish_3"),
                        SKTexture(imageNamed: "fish_3")
                    ]
                    
                    for t in texFish {
                        t.filteringMode = .nearest
                    }
                    
                    let fish = SKAction.animate(with: texFish, timePerFrame: 0.5)
                    let fishLoop = SKAction.repeat(fish, count: 1)
                    fishie.run(fishLoop)
                    
                    
                    let texEating: [SKTexture] = [
                        SKTexture(imageNamed: "eat_00"),
                        SKTexture(imageNamed: "eat_01"),
                        SKTexture(imageNamed: "eat_02"),
                        SKTexture(imageNamed: "eat_03"),
                        SKTexture(imageNamed: "eat_04"),
                        SKTexture(imageNamed: "eat_05"),
                        SKTexture(imageNamed: "eat_06"),
                        SKTexture(imageNamed: "eat_07"),
                        SKTexture(imageNamed: "eat_08"),
                        SKTexture(imageNamed: "eat_09"),
                        SKTexture(imageNamed: "eat_10"),
                        SKTexture(imageNamed: "eat_11"),
                        SKTexture(imageNamed: "eat_12"),
                        
                        
                    ]
                    
                    for t in texEating {
                        t.filteringMode = .nearest
                    }
                    
                    let eating = SKAction.animate(with: texEating, timePerFrame: 0.2)
                    
                    let eatingLoop = SKAction.repeat(eating, count: 1)
                    
                    toti.run(eatingLoop, completion: {
                        self.idleAnimation()
                    })
                    
                    updateBars()
                }
                
                else if node.name == "fun" {
                    funButton.texture = SKTexture(imageNamed: "butFun_normal")
                    
                    funStatus = self.defaults.integer(forKey: "fun")
                    if funStatus < 10 {
                        defaults.set(funStatus + 1, forKey: "fun")
                    }
                    
                    let texPlaying: [SKTexture] = [
                        SKTexture(imageNamed: "totiPlay_0"),
                        SKTexture(imageNamed: "totiPlay_1"),
                        SKTexture(imageNamed: "totiPlay_2"),
                        SKTexture(imageNamed: "totiPlay_3"),
                        SKTexture(imageNamed: "totiPlay_3"),
                        SKTexture(imageNamed: "totiPlay_3")
                        
                    ]
                    
                    for t in texPlaying {
                        t.filteringMode = .nearest
                    }
                    
                    let playing = SKAction.animate(with: texPlaying, timePerFrame: 0.2)
                    
                    let playingLoop = SKAction.repeat(playing, count: 2)
                    
                    toti.run(playingLoop, completion: {
                        self.idleAnimation()
                    })
                    
                    updateBars()
                    
                    
                }
                else if node.name == "sleep" {
                    sleepButton.texture = SKTexture(imageNamed: "butSleep_normal")
                    
                    energyStatus = self.defaults.integer(forKey: "energy")
                    if energyStatus < 10 {
                        defaults.set(energyStatus + 1, forKey: "energy")
                    }
                    
                    let texSleeping: [SKTexture] = [
                        SKTexture(imageNamed: "sleep_0"),
                        SKTexture(imageNamed: "sleep_1"),
                        SKTexture(imageNamed: "sleep_2"),
                        SKTexture(imageNamed: "sleep_3"),
                        SKTexture(imageNamed: "sleep_4")
                        
                    ]
                    
                    for t in texSleeping {
                        t.filteringMode = .nearest
                    }
                    
                    let sleeping = SKAction.animate(with: texSleeping, timePerFrame: 0.3)
                    
                    let sleepingLoop = SKAction.repeat(sleeping, count: 2)
                    
                    toti.run(sleepingLoop, completion: {
                        self.idleAnimation()
                    })
                    
                    updateBars()
                }
                else if node.name == "med" {
                    medButton.texture = SKTexture(imageNamed: "butMed_normal")
                    
                    let texMed: [SKTexture] = [
                        SKTexture(imageNamed: "med_0"),
                        SKTexture(imageNamed: "med_1"),
                        SKTexture(imageNamed: "med_2"),
                        SKTexture(imageNamed: "med_3"),
                        SKTexture(imageNamed: "med_4"),
                        SKTexture(imageNamed: "med_5")
                        
                    ]
                    
                    for t in texMed {
                        t.filteringMode = .nearest
                    }
                    
                    let medic = SKAction.animate(with: texMed, timePerFrame: 0.3)
                    
                    let medLoop = SKAction.repeat(medic, count: 1)
                    
                    toti.run(medLoop, completion: {
                        self.idleAnimation()
                    })

                    
                    
                }
                else if node.name == "litter" {
                    print("caixinha")
                }
            }
        }
    }
    
}
