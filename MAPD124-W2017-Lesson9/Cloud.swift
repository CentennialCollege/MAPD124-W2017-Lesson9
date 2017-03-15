//
//  Cloud.swift
//  MAPD124-W2017-Lesson9
//
//  Created by Tom Tsiliopoulos on 2017-03-14.
//  Copyright © 2017 Tom Tsiliopoulos. All rights reserved.
//

import SpriteKit
import GameplayKit

class Cloud: GameObject {
    // Constructor / initialize
    init() {
        super.init(imageString: "cloud")
        self.zPosition = 3 // order in layer
        self.Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func Reset() {
        self.dy = CGFloat((self.randomSource?.nextUniform())!)
            * 5.0 + 5.0 // vertical speed
        self.dx = CGFloat((self.randomSource?.nextUniform())!)
            * 2.0 - 2.0 // horizontal drift
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
        self.setScale(0.65)
        self.Reset()
    }
    
    override func Update() {
        self.position.y -= self.dy!
        if(self.dx! > 0.0) {
            self.position.x -= self.dx!
        }
        else {
            self.position.x += self.dx!

        }
        
        self.CheckBounds()
    }

}
