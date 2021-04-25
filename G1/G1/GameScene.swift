//
//  GameScene.swift
//  G1
//
//  Created by mac on 19.04.2021.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var snake: snake?
    
    override func didMove(to view: SKView) {
        backgroundColor = SKColor.black
        self.physicsWorld.gravity = CGVector(dx: 0, dy: 0)
        self.physicsBody = SKPhysicsBody (edgeLoopFrom: frame)
        self.physicsBody?.allowsRotation = false
        view.showsFields = true
        
        let counterClockwiseButtom = SKShapeNode ()
        counterClockwiseButtom.path = UIBezierPath (ovalIn: CGRect(x: 0, y: 0, width: 45, height: 45)).cgPath
        counterClockwiseButtom.position = CGPoint(x: view.scene!.frame.minX + 30, y: view.scene!.frame.minY + 30)
        counterClockwiseButtom.fillColor = UIColor.gray
        counterClockwiseButtom.strokeColor = UIColor.gray
        counterClockwiseButtom.lineWidth = 10
        counterClockwiseButtom.name = "counterClokcwiseButtom"
        self.addChild(counterClockwiseButtom)
        
        let ClockwiseButtom = SKShapeNode ()
        ClockwiseButtom.path = UIBezierPath (ovalIn: CGRect(x: 0, y: 0, width: 45, height: 45)).cgPath
        ClockwiseButtom.position = CGPoint(x: view.scene!.frame.maxX - 100, y: view.scene!.frame.minY + 30)
        ClockwiseButtom.fillColor = UIColor.gray
        ClockwiseButtom.strokeColor = UIColor.gray
        ClockwiseButtom.lineWidth = 10
        ClockwiseButtom.name = "ClokcwiseButtom"
        self.addChild(ClockwiseButtom)
        
        createApple()
        snake = snake(atPoint: CGPoint(x: view.scene!.frame.midX, y: view.scene!.frame.midY))
        
        }
        
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) { for touch in touches {
        let touchlocation = touch.location(in: self)
        guard let touchesNode  = self.atPoint(touchlocation) as? SKShapeNode, touchesNode.name == "counterClokcwiseButtom" || touchesNode.name == "ClokcwiseButtom" else {
            return
        }
        touchesNode.fillColor = .green
    }
       
    }
    
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) { for touch in touches {
        let touchlocation = touch.location(in: self)
        guard let touchesNode  = self.atPoint(touchlocation) as? SKShapeNode, touchesNode.name == "counterClokcwiseButtom" || touchesNode.name == "ClokcwiseButtom" else {
            return
        }
        touchesNode.fillColor = .gray
    }
       
    }
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        
    }

func createApple() {
    
    let randX = CGFloat(arc4random_uniform(UInt32(view!.scene!.frame.maxX - 5)))
    let randY = CGFloat(arc4random_uniform(UInt32(view!.scene!.frame.maxY - 5)))
    let apple = Apple(position: CGPoint(x: randX, y: randY))
    
    self.addChild(apple)
    


}
}
