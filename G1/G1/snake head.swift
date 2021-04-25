//
//  snake head.swift
//  G1
//
//  Created by mac on 20.04.2021.
//

import UIKit

class SnakeHead: snakeBodyparts {
    override init(atPoint point: CGPoint){
    super.init(atPoint: point)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("Error")
    }
    
}

