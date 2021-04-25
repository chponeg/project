//
//  Snake all.swift
//  G1
//
//  Created by mac on 20.04.2021.
//

import UIKit
import SpriteKit

class snake: SKShapeNode{
    var body = [snakeBodyparts]()
    convenience init(atPoint point: CGPoint) {
        self.init()
        let head = SnakeHead(atPoint: point)
        body.append(head)
        addChild(head)
    }
    
    func addBodyPart() {
        let newBodyPart = snakeBodyparts(atPoint: CGPoint( x: body[0].position.x, y: body[0].position.y))
        body.append(newBodyPart)
        addChild(newBodyPart)
    }
    
    
}
