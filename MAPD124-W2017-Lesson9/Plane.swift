//
//  Plane.swift
//  MAPD124-W2017-Lesson9
//
//  Created by Tom Tsiliopoulos on 2017-03-14.
//  Copyright © 2017 Tom Tsiliopoulos. All rights reserved.
//

import SpriteKit
import GameplayKit
import CoreGraphics

class Plane: GameObject {
    // Constructor / initialize
    init() {
        super.init(imageString: "plane")
        self.zPosition = 2 // order in layer
        self.Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func Reset() {

    }
    
    override func CheckBounds() {

    }
    
    override func Start() {
        self.position.y = 50
        self.position.x = screenWidth * 0.5
    }
    
    override func Update() {

    }
    
    public func TouchMove(newPos: CGPoint) {
        self.position.x = newPos.x
    }
}
