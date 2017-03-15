//
//  Ocean.swift
//  MAPD124-W2017-Lesson9
//
//  Created by Tom Tsiliopoulos on 2017-03-14.
//  Copyright © 2017 Tom Tsiliopoulos. All rights reserved.
//

import SpriteKit
import GameplayKit

class Ocean: GameObject {
    // Constructor / initialize
    init() {
        super.init(imageString: "ocean")
        self.Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func Reset() {
        self.position.y = 0
    }
    
    override func CheckBounds() {
        if(self.position.y <= -960) {
            self.Reset()
        }
    }
    
    override func Start() {
        self.anchorPoint = CGPoint(x: 0.0, y: 0.0)
        self.dy = 5.0
    }
    
    override func Update() {
        self.position.y -= self.dy!
        self.CheckBounds()
    }
}
