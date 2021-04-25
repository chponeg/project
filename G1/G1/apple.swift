//
//  apple.swift
//  G1
//
//  Created by mac on 19.04.2021.
//

import Foundation
import UIKit
import SpriteKit

class Apple: SKShapeNode {
    convenience init(position:CGPoint) {
        self.init ()
        
        path = UIBezierPath (ovalIn: CGRect(x: 0, y: 0, width: 10, height: 10)).cgPath
        fillColor = UIColor.red
        strokeColor = UIColor.red
        lineWidth = 5
       
        self.position = position
    }
}
