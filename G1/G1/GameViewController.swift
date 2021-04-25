//
//  GameViewController.swift
//  G1
//
//  Created by mac on 19.04.2021.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scene = GameScene(size: view.bounds.size)
        let skview = view as! SKView
        
        skview.showsFPS = true
        skview.showsNodeCount = true
        skview.ignoresSiblingOrder = true
        scene.scaleMode = .resizeFill
        
        skview.presentScene(scene)
        
        
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
