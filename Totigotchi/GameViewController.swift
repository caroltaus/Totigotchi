//
//  ViewController.swift
//  Totigotchi
//
//  Created by Caroline Taus on 19/07/21.
//

import SpriteKit

class GameViewController: UIViewController {

    public let scene = GameScene()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let view = SKView()
        scene.scaleMode = .resizeFill
        view.presentScene(scene)
        self.view = view
    }


}

