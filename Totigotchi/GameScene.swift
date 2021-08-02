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
    var texHappy: [SKTexture] { [
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
    ]}
    var texSad: [SKTexture] { [
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
    ]}
    var texAngry: [SKTexture] { [
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
    ]}
    var texLove: [SKTexture] { [
        SKTexture(imageNamed: "love_0"),
        SKTexture(imageNamed: "love_1"),
        SKTexture(imageNamed: "love_2"),
        SKTexture(imageNamed: "love_3"),
        SKTexture(imageNamed: "love_4"),
        SKTexture(imageNamed: "love_5")
        
    ]}
    lazy var texFish: [SKTexture] = [
        SKTexture(imageNamed: "fish_0"),
        SKTexture(imageNamed: "fish_0"),
        SKTexture(imageNamed: "fish_1"),
        SKTexture(imageNamed: "fish_2"),
        SKTexture(imageNamed: "fish_3"),
        SKTexture(imageNamed: "fish_3")
    ]
    var texEating: [SKTexture] { [
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
        
        
    ]}
    var texPlaying: [SKTexture] { [
        SKTexture(imageNamed: "totiPlay_0"),
        SKTexture(imageNamed: "totiPlay_1"),
        SKTexture(imageNamed: "totiPlay_2"),
        SKTexture(imageNamed: "totiPlay_3"),
        SKTexture(imageNamed: "totiPlay_3"),
        SKTexture(imageNamed: "totiPlay_3")
        
    ]}
    var texSleeping: [SKTexture] { [
        SKTexture(imageNamed: "sleep_0"),
        SKTexture(imageNamed: "sleep_1"),
        SKTexture(imageNamed: "sleep_2"),
        SKTexture(imageNamed: "sleep_3"),
        SKTexture(imageNamed: "sleep_4")
        
    ]}
    var texMed: [SKTexture] { [
        SKTexture(imageNamed: "med_0"),
        SKTexture(imageNamed: "med_1"),
        SKTexture(imageNamed: "med_2"),
        SKTexture(imageNamed: "med_3"),
        SKTexture(imageNamed: "med_4"),
        SKTexture(imageNamed: "med_5")
        
    ]}
    var texMedAng: [SKTexture] { [
        SKTexture(imageNamed: "medAng_0"),
        SKTexture(imageNamed: "medAng_0"),
        SKTexture(imageNamed: "medAng_0"),
        SKTexture(imageNamed: "medAng_0"),
        SKTexture(imageNamed: "medAng_0"),
        SKTexture(imageNamed: "medAng_1"),
        SKTexture(imageNamed: "medAng_2"),
        SKTexture(imageNamed: "medAng_3"),
        SKTexture(imageNamed: "medAng_4"),
        SKTexture(imageNamed: "medAng_5"),
        SKTexture(imageNamed: "medAng_6"),
        SKTexture(imageNamed: "medAng_7"),
        SKTexture(imageNamed: "medAng_8"),
        SKTexture(imageNamed: "medAng_0"),
        SKTexture(imageNamed: "medAng_0")
    ]}
    var texSick: [SKTexture] { [
        SKTexture(imageNamed: "sick_00"),
        SKTexture(imageNamed: "sick_01"),
        SKTexture(imageNamed: "sick_02"),
        SKTexture(imageNamed: "sick_03"),
        SKTexture(imageNamed: "sick_04"),
        SKTexture(imageNamed: "sick_05"),
        SKTexture(imageNamed: "sick_06"),
        SKTexture(imageNamed: "sick_07"),
        SKTexture(imageNamed: "sick_08"),
        SKTexture(imageNamed: "sick_09"),
        SKTexture(imageNamed: "sick_10"),
        SKTexture(imageNamed: "sick_11"),
        SKTexture(imageNamed: "sick_12"),
        SKTexture(imageNamed: "sick_13"),
        SKTexture(imageNamed: "sick_14"),
        SKTexture(imageNamed: "sick_15"),
        SKTexture(imageNamed: "sick_16"),
        SKTexture(imageNamed: "sick_17"),
        SKTexture(imageNamed: "sick_18"),
        SKTexture(imageNamed: "sick_19"),
        SKTexture(imageNamed: "sick_20"),
        SKTexture(imageNamed: "sick_21"),
        SKTexture(imageNamed: "sick_22"),
        SKTexture(imageNamed: "sick_23"),
        SKTexture(imageNamed: "sick_24"),
        SKTexture(imageNamed: "sick_25"),
        SKTexture(imageNamed: "sick_26"),
        SKTexture(imageNamed: "sick_27"),
    ]
        
    }
    var foodButton: SKSpriteNode = SKSpriteNode(imageNamed: "butFood_normal")
    var funButton: SKSpriteNode = SKSpriteNode(imageNamed: "butFun_normal")
    var sleepButton: SKSpriteNode = SKSpriteNode(imageNamed: "butSleep_normal")
    var medButton: SKSpriteNode = SKSpriteNode(imageNamed: "butMed_normal")
    var litter: SKSpriteNode = SKSpriteNode(imageNamed: "litter_clean")
    var fishie: SKSpriteNode = SKSpriteNode(imageNamed: "fish_0")
    var HTP = HowToPlay()
    let defaults = UserDefaults.standard
    var hungerStatus = UserDefaults.standard.integer(forKey: "hunger")
    var funStatus = UserDefaults.standard.integer(forKey: "fun")
    var energyStatus = UserDefaults.standard.integer(forKey: "energy")
    var loveStatus = UserDefaults.standard.integer(forKey: "love")
    var greenStatus: Int = 0
    var firstRun = UserDefaults.standard.bool(forKey: "firstRun") as Bool //starts on false
    lazy var currentTexture: [SKTexture] = []
    var hungerDate = UserDefaults.standard.object(forKey: "hungerDate") as? Date ?? Date()
    var funDate = UserDefaults.standard.object(forKey: "funDate") as? Date ?? Date()
    var energyDate = UserDefaults.standard.object(forKey: "energyDate") as? Date ?? Date()
    var loveDate = UserDefaults.standard.object(forKey: "loveDate") as? Date ?? Date()
    weak var timerHunger: Timer?
    weak var timerFun: Timer?
    weak var timerLove: Timer?
    weak var timerEnergy: Timer?
    let hungerTime = UserDefaults.standard.double(forKey: "hungerTime")
    let funTime = UserDefaults.standard.double(forKey: "funTime")
    let energyTime = UserDefaults.standard.double(forKey: "energyTime")
    let loveTime = UserDefaults.standard.double(forKey: "loveTime")
    let hungTimeForDrop: Double = 40
    let funTimeForDrop: Double = 40
    let energyTimeForDrop: Double = 40
    let loveTimeForDrop: Double = 40
    var dirtyLitter = UserDefaults.standard.bool(forKey: "litter") as Bool
    var sick = UserDefaults.standard.bool(forKey: "sick") as Bool
    
    
    
    
    // MARK: ---- Setting Notifications ----
    public override func sceneDidLoad() {
        let app = UIApplication.shared
        NotificationCenter.default.addObserver(self, selector: #selector(GameScene.applicationWillEnterForeground(notification:)), name: UIApplication.willEnterForegroundNotification, object: app)
        
        NotificationCenter.default.addObserver(self, selector: #selector(GameScene.applicationWillResignActive(notification:)), name: UIApplication.willResignActiveNotification, object: app)
    }
    
    // application enters bg
    @objc func applicationWillResignActive(notification: NSNotification) {
        timerHunger?.invalidate()
        timerFun?.invalidate()
        timerEnergy?.invalidate()
        timerLove?.invalidate()
        
    }
    
    // application is active
    @objc func applicationWillEnterForeground(notification: NSNotification) {
        
        // setting status for first run
        if !firstRun {
            defaults.set(true, forKey: "firstRun")
            firstRun = true
        }
        
        else {
            calculateHung()
            calculateFun()
            calculateEnergy()
            calculateLove()
            updateBars()
            
            if !dirtyLitter {
                let boolLitter = isDirty()
                defaults.set(boolLitter, forKey: "litter")
                dirtyLitter = boolLitter
            }
            
            litterIdle()
            
            if !sick {
                let boolSick = isSick()
                defaults.set(boolSick, forKey: "sick")
                sick = boolSick
            }
            idleAnimation()
            
            
        }
    }
    
    func calculateHung(){
        let hungerDate2 = self.defaults.object(forKey: "hungerDate") as! Date
        let currentDate = Date()
        var TimeDiff = currentDate.timeIntervalSince(hungerDate2)
        var percentage = 0
        if TimeDiff >= hungerTime {
            percentage += 1
            TimeDiff -= hungerTime
        }
        percentage += Int(floor(TimeDiff/hungTimeForDrop))
        updateHunger(percentage: percentage)
        let interval = TimeDiff.truncatingRemainder(dividingBy: hungTimeForDrop)
        defaults.set(Date(), forKey: "hungerDate")
        timerHunger = Timer.scheduledTimer(withTimeInterval: interval, repeats: false){ [weak self] timer in self?.decreaseHunger()}
        defaults.set(interval, forKey: "hungerTime")
    }
    
    func calculateFun(){
        let funDate2 = self.defaults.object(forKey: "funDate") as! Date
        let currentDate = Date()
        var TimeDiff = currentDate.timeIntervalSince(funDate2)
        var percentage = 0
        if TimeDiff >= funTime {
            percentage += 1
            TimeDiff -= funTime
        }
        percentage += Int(floor(TimeDiff/funTimeForDrop))
        updateFun(percentage: percentage)
        let interval = TimeDiff.truncatingRemainder(dividingBy: funTimeForDrop)
        defaults.set(Date(), forKey: "funDate")
        timerFun = Timer.scheduledTimer(withTimeInterval: interval, repeats: false){ [weak self] timer in self?.decreaseFun()}
        defaults.set(interval, forKey: "funTime")
    }
    
    func calculateEnergy(){
        let energyDate2 = self.defaults.object(forKey: "energyDate") as! Date
        let currentDate = Date()
        var TimeDiff = currentDate.timeIntervalSince(energyDate2)
        var percentage = 0
        if TimeDiff >= energyTime {
            percentage += 1
            TimeDiff -= energyTime
        }
        percentage += Int(floor(TimeDiff/energyTimeForDrop))
        updateEnergy(percentage: percentage)
        let interval = TimeDiff.truncatingRemainder(dividingBy: energyTimeForDrop)
        defaults.set(Date(), forKey: "energyDate")
        timerEnergy = Timer.scheduledTimer(withTimeInterval: interval, repeats: false){ [weak self] timer in self?.decreaseEnergy()}
        defaults.set(interval, forKey: "energyTime")
    }
    
    func calculateLove(){
        let loveDate2 = self.defaults.object(forKey: "loveDate") as! Date
        let currentDate = Date()
        var TimeDiff = currentDate.timeIntervalSince(loveDate2)
        var percentage = 0
        if TimeDiff >= loveTime {
            percentage += 1
            TimeDiff -= loveTime
        }
        percentage += Int(floor(TimeDiff/loveTimeForDrop))
        updateLove(percentage: percentage)
        let interval = TimeDiff.truncatingRemainder(dividingBy: loveTimeForDrop)
        defaults.set(Date(), forKey: "loveDate")
        timerLove = Timer.scheduledTimer(withTimeInterval: interval, repeats: false){ [weak self] timer in self?.decreaseLove()}
        defaults.set(interval, forKey: "loveTime")
    }
    
    // MARK: --- Decrease Functions ---
    
    // Compensates for when app in in background
    func updateHunger(percentage: Int) {
        hungerStatus = self.defaults.integer(forKey: "hunger")
        if hungerStatus > 0 && percentage < hungerStatus {
            defaults.set(hungerStatus - percentage, forKey: "hunger")
        }
        else if percentage >= hungerStatus {
            defaults.set(0, forKey: "hunger")
        }
//        idleAnimation()
//        updateBars()
    }
    
    func updateFun(percentage: Int) {
        funStatus = self.defaults.integer(forKey: "fun")
        if funStatus > 0 && percentage < funStatus {
            defaults.set(funStatus - percentage, forKey: "fun")
        }
        else if percentage >= funStatus {
            defaults.set(0, forKey: "fun")
        }
//        idleAnimation()
//        updateBars()
    }
    
    func updateEnergy(percentage: Int) {
        energyStatus = self.defaults.integer(forKey: "energy")
        if energyStatus > 0 && percentage < energyStatus {
            defaults.set(energyStatus - percentage, forKey: "energy")
        }
        else if percentage >= energyStatus {
            defaults.set(0, forKey: "energy")
        }
//        idleAnimation()
//        updateBars()
    }
    
    func updateLove(percentage: Int) {
        loveStatus = self.defaults.integer(forKey: "love")
        if loveStatus > 0 && percentage < loveStatus {
            defaults.set(loveStatus - percentage, forKey: "love")
        }
        else if percentage >= loveStatus {
            defaults.set(0, forKey: "love")
        }
//        idleAnimation()
//        updateBars()
    }
    
    
    // Runs when app is active in foreground
    func decreaseHunger(){
        hungerStatus = self.defaults.integer(forKey: "hunger")
        if hungerStatus > 0 {
            defaults.set(hungerStatus - 1, forKey: "hunger")
            idleAnimation()
        }
        updateBars()
        
        defaults.set(Date(), forKey: "hungerDate")
        timerHunger = Timer.scheduledTimer(withTimeInterval: hungTimeForDrop, repeats: false){ [weak self] timer in self?.decreaseHunger()}
    }
    
    func decreaseFun(){
        funStatus = self.defaults.integer(forKey: "fun")
        if funStatus > 0 {
            defaults.set(funStatus - 1, forKey: "fun")
            idleAnimation()
        }
        updateBars()
        
        defaults.set(Date(), forKey: "funDate")
        timerFun = Timer.scheduledTimer(withTimeInterval: funTimeForDrop, repeats: false){ [weak self] timer in self?.decreaseFun()}
    }
    
    func decreaseEnergy(){
        energyStatus = self.defaults.integer(forKey: "energy")
        if energyStatus > 0 {
            defaults.set(energyStatus - 1, forKey: "energy")
            idleAnimation()
        }
        updateBars()
        
        defaults.set(Date(), forKey: "energyDate")
        timerEnergy = Timer.scheduledTimer(withTimeInterval: energyTimeForDrop, repeats: false){ [weak self] timer in self?.decreaseEnergy()}
    }
    
    func decreaseLove(){
        loveStatus = self.defaults.integer(forKey: "love")
        if loveStatus > 0 {
            idleAnimation()
            defaults.set(loveStatus - 1, forKey: "love")
        }
        
        updateBars()
        
        defaults.set(Date(), forKey: "loveDate")
        timerLove = Timer.scheduledTimer(withTimeInterval: loveTimeForDrop, repeats: false){ [weak self] timer in self?.decreaseLove()}
    }
 
    
    // MARK: --- Did Move ---
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
        
        if !firstRun {
            // setting status bars for first run
            defaults.set(5, forKey: "hunger")
            defaults.set(5, forKey: "love")
            defaults.set(5, forKey: "fun")
            defaults.set(5, forKey: "energy")
            
            // hunger
            timerHunger = Timer.scheduledTimer(withTimeInterval: hungTimeForDrop, repeats: false){ [weak self] timer in self?.decreaseHunger()}
            defaults.set(Date(), forKey: "hungerDate")
            defaults.set(hungTimeForDrop, forKey: "hungerTime")
            
            // fun
            timerFun = Timer.scheduledTimer(withTimeInterval: funTimeForDrop, repeats: false){ [weak self] timer in self?.decreaseFun()}
            defaults.set(Date(), forKey: "funDate")
            defaults.set(funTimeForDrop, forKey: "funTime")
            
            // energy
            timerEnergy = Timer.scheduledTimer(withTimeInterval: energyTimeForDrop, repeats: false){ [weak self] timer in self?.decreaseEnergy()}
            defaults.set(Date(), forKey: "energyDate")
            defaults.set(energyTimeForDrop, forKey: "energyTime")
            
            // love
            timerLove = Timer.scheduledTimer(withTimeInterval: loveTimeForDrop, repeats: false){ [weak self] timer in self?.decreaseLove()}
            defaults.set(Date(), forKey: "loveDate")
            defaults.set(loveTimeForDrop, forKey: "loveTime")
            
        }
    }
    
    
    // MARK: --- Did Change Size ---
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
                
        litter.position = CGPoint(x: 130, y: 0)
        
        
        fishie.position = CGPoint(x: toti.position.x, y: toti.position.y - 28)
        fishie.zPosition = 2
        
        HTP.isHidden = true
        HTP.closeButtonAction = {
            self.HTP.isHidden = true
        }
        
        
        idleAnimation()
        updateBars()
        litterIdle()
        
        
        
    }
    
    // MARK: --- Status Colors ---
    // counts the number of green bars to decide the correct idle animation
    public func statusColors() -> Int {
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

    // MARK: --- Idle Animation ---
    public func idleAnimation(){
        
        fishie.isHidden = true
        
        greenStatus = statusColors()
        
        // Sick Idle
        if sick {
            print("to dodoi")
            currentTexture = texSick
            
            for t in currentTexture {
                t.filteringMode = .nearest
            }
            let sickIdle = SKAction.animate(with: currentTexture, timePerFrame: 0.1)
            
            let sickLoop = SKAction.repeatForever(sickIdle)
            toti.removeAllActions()
            toti.run(sickLoop)
               
        }
        // Angry Idle
        else if greenStatus < 2 || dirtyLitter {
            currentTexture = texAngry
            for t in currentTexture {
                t.filteringMode = .nearest
            }
            
            let angryIdle = SKAction.animate(with: currentTexture, timePerFrame: 0.1)
            
            let angryLoop = SKAction.repeatForever(angryIdle)
            toti.removeAllActions()
            toti.run(angryLoop)
        }
        
        // Happy Idle
        else if greenStatus >= 3 {
            currentTexture = texHappy
            for t in currentTexture {
                t.filteringMode = .nearest
            }
            
            let happyIdle = SKAction.animate(with: currentTexture, timePerFrame: 0.1)
            
            let happyLoop = SKAction.repeatForever(happyIdle)
            toti.removeAllActions()
            toti.run(happyLoop)
        }
        
        // Sad Idle
        else {
            
            currentTexture = texSad
            
            for t in currentTexture {
                t.filteringMode = .nearest
            }
            
            let sadIdle = SKAction.animate(with: currentTexture, timePerFrame: 0.1)
            
            let sadLoop = SKAction.repeatForever(sadIdle)
            toti.removeAllActions()
            toti.run(sadLoop)
            
        }
        
        
               
    }
    
    // MARK: --- UpdateBars ---
    // updates the texture of the status bars
    public func updateBars() {
        let hungerPerc = self.defaults.integer(forKey: "hunger") * 10
        let hungerBarTexture: SKTexture = SKTexture(imageNamed: "hungerBar\(hungerPerc)")
        hungerBar.texture = hungerBarTexture
        
        let funPerc = self.defaults.integer(forKey: "fun") * 10
        let funBarTexture: SKTexture = SKTexture(imageNamed: "funBar\(funPerc)")
        funBar.texture = funBarTexture
        
        let lovePerc = self.defaults.integer(forKey: "love") * 10
        let loveBarTexture: SKTexture = SKTexture(imageNamed: "loveBar\(lovePerc)")
        loveBar.texture = loveBarTexture
        
        let energyPerc = self.defaults.integer(forKey: "energy") * 10
        let energyBarTexture: SKTexture = SKTexture(imageNamed: "energyBar\(energyPerc)")
        energyBar.texture = energyBarTexture
        
    }
    
    // MARK: --- TouchesBegan ---
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let scene = self
        if let touch = touches.first {
            let location = touch.location(in: scene)
            let touchedNodes = scene.nodes(at: location)
            for node in touchedNodes.reversed() {
                if node.name == "question" {
                    butQuest.texture = SKTexture(imageNamed: "butQuest_pressed")
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
    
    // MARK: --- TouchesEnded ---
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
                
                else if node.name == "toti" && touchedNodes.count == 1 {
                    fishie.isHidden = true
                    loveStatus = self.defaults.integer(forKey: "love")
                    if loveStatus < 10 {
                        defaults.set(loveStatus + 1, forKey: "love")
                    }
                    
                    currentTexture = texLove
                    
                    for t in currentTexture {
                        t.filteringMode = .nearest
                    }
                    
                    let love = SKAction.animate(with: currentTexture, timePerFrame: 0.2)
                    let loveLoop = SKAction.repeat(love, count: 1)
                    toti.removeAllActions()
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
                    
                    
                    
                    for t in texFish {
                        t.filteringMode = .nearest
                    }
                    
                    let fish = SKAction.animate(with: texFish, timePerFrame: 0.5)
                    let fishLoop = SKAction.repeat(fish, count: 1)
                    fishie.run(fishLoop)
                    
                    
                    
                    currentTexture = texEating
                    for t in currentTexture {
                        t.filteringMode = .nearest
                    }
                    
                    let eating = SKAction.animate(with: currentTexture, timePerFrame: 0.2)
                    
                    let eatingLoop = SKAction.repeat(eating, count: 1)
                    toti.removeAllActions()
                    toti.run(eatingLoop, completion: {
                        self.idleAnimation()
                    })
                    
                    updateBars()
                }
                
                else if node.name == "fun" {
                    fishie.isHidden = true
                    funButton.texture = SKTexture(imageNamed: "butFun_normal")
                    
                    funStatus = self.defaults.integer(forKey: "fun")
                    if funStatus < 10 {
                        defaults.set(funStatus + 1, forKey: "fun")
                    }
                    
                    currentTexture = texPlaying
                    
                    for t in currentTexture {
                        t.filteringMode = .nearest
                    }
                    
                    let playing = SKAction.animate(with: currentTexture, timePerFrame: 0.2)
                    
                    let playingLoop = SKAction.repeat(playing, count: 2)
                    toti.removeAllActions()
                    toti.run(playingLoop, completion: {
                        self.idleAnimation()
                    })
                    
                    updateBars()
                }
                
                else if node.name == "sleep" {
                    fishie.isHidden = true
                    sleepButton.texture = SKTexture(imageNamed: "butSleep_normal")
                    
                    energyStatus = self.defaults.integer(forKey: "energy")
                    if energyStatus < 10 {
                        defaults.set(energyStatus + 1, forKey: "energy")
                    }
                    
                    
                    currentTexture = texSleeping
                    for t in currentTexture {
                        t.filteringMode = .nearest
                    }
                    
                    let sleeping = SKAction.animate(with: currentTexture, timePerFrame: 0.3)
                    
                    let sleepingLoop = SKAction.repeat(sleeping, count: 2)
                    toti.removeAllActions()
                    toti.run(sleepingLoop, completion: {
                        self.idleAnimation()
                    })
                    
                    updateBars()
                }
                
                else if node.name == "med" {
                    fishie.isHidden = true
                    medButton.texture = SKTexture(imageNamed: "butMed_normal")
                    
                    if sick {
                        defaults.set(false, forKey: "sick")
                        sick = false
                        currentTexture = texMed
                        for t in currentTexture {
                            t.filteringMode = .nearest
                        }
                        
                        let medic = SKAction.animate(with: currentTexture, timePerFrame: 0.3)
                        
                        let medLoop = SKAction.repeat(medic, count: 1)
                        toti.removeAllActions()
                        toti.run(medLoop, completion: {
                            self.idleAnimation()
                        })
                    }
                    
                    else {
                        currentTexture = texMedAng
                        for t in currentTexture {
                            t.filteringMode = .nearest
                        }
                        
                        let medAngryIdle = SKAction.animate(with: currentTexture, timePerFrame: 0.1)
                        
                        let medAngryLoop = SKAction.repeat(medAngryIdle, count: 1)
                        toti.removeAllActions()
                        toti.run(medAngryLoop, completion: {
                            self.idleAnimation()
                        })
                    }
                }
                
                else if node.name == "litter" {
                    defaults.set(false, forKey: "litter")
                    litterIdle()
                    
                }
            }
        }
    }
    
    func isDirty() -> Bool {
        let prob = Int.random(in: 0..<2)
        if prob == 1 {
            return true
        }
        return false
    }
    
    func litterIdle() {
        litter.removeAllActions()
        dirtyLitter = self.defaults.bool(forKey: "litter")
        if dirtyLitter == false {
            litter.texture = SKTexture(imageNamed: "litter_clean")
        }
        else {
            
            let litterTex = [SKTexture(imageNamed: "litter_dirty1"),
                         SKTexture(imageNamed: "litter_dirty2")
            ]
            
            for t in litterTex {
                t.filteringMode = .nearest
            }
            
            let smell = SKAction.animate(with: litterTex, timePerFrame: 0.5)
            
            let smellLoop = SKAction.repeatForever(smell)
           
            litter.run(smellLoop)
            
        }
    }
    
    func isSick() -> Bool {
        let prob = Int.random(in: 0..<2)
        print(prob)
        if prob == 1 {
            return true
        }
        return false
    }
    
}
