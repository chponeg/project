//
//  snike.swift
//  G1
//
//  Created by mac on 20.04.2021.
//

import UIKit
import SpriteKit

class snakeBodyparts: SKShapeNode {
    let diametr = 10
    init(atPoint point:CGPoint){
        super.init()
        
        path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: diametr, height: diametr)).cgPath
        fillColor = UIColor.green
        strokeColor = UIColor.green
        lineWidth = 5
        self.position = point
        
        
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("Error")
    }
    
}
