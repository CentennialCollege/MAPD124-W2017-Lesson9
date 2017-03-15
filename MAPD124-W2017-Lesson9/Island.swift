//
//  Island.swift
//  MAPD124-W2017-Lesson9
//
//  Created by Tom Tsiliopoulos on 2017-03-14.
//  Copyright © 2017 Tom Tsiliopoulos. All rights reserved.
//

import SpriteKit
import GameplayKit

class Island: GameObject {
    // Constructor / initialize
    init() {
        super.init(imageString: "island")
        self.zPosition = 1 // order in layer
        self.Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func Reset() {
        self.position.y = screenHeight + self.height!
        self.position.x = CGFloat((self.randomSource?.nextUniform())!)
            * (screenWidth - self.width!) + self.halfwidth!
    }
    
    override func CheckBounds() {
        if(self.position.y <= (0 - self.height!)) {
            self.Reset()
        }
    }
    
    override func Start() {
        self.dy = 5.0
        self.Reset()
    }
    
    override func Update() {
        self.position.y -= self.dy!
        self.CheckBounds()
    }

}
