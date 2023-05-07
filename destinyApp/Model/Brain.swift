//
//  Brain.swift
//  destinyApp
//
//  Created by Lucas Fronciani on 11/6/22.
//

import Foundation

struct Stories {
    let text: String
    let choice1: String
    let choice2: String
    let choice1Dest: Int
    let choice2Dest: Int
    
    init(t: String, c1: String, c2: String, c1D: Int, c2D: Int) {
        text = t
        choice1 = c1
        choice2 = c2
        choice1Dest = c1D
        choice2Dest = c2D
    }
}
