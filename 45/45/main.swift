//
//  main.swift
//  45
//
//  Created by mac on 02.04.2021.
//

import Foundation

import Foundation

for count in 1...10 {
    if count % 2 == 0 {
    var starString = " "
        for _ in 1...count {
        starString += "*"
    }
    print (starString)
    } else {
    var dashString = " "
        for _ in 1...count {
        dashString += "-"
    }
    print (dashString)
    }
}
