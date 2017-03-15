//
//  PlayScene.swift
//  MAPD124-W2017-Lesson9
//
//  Created by Tom Tsiliopoulos on 2017-03-14.
//  Copyright © 2017 Tom Tsiliopoulos. All rights reserved.
//

import SpriteKit
import GameplayKit

class PlayScene: SKScene {

    var planeSprite:SKSpriteNode?
    
    override func didMove(to view: SKView) {

        planeSprite = SKSpriteNode(imageNamed: "plane")
        planeSprite?.position = CGPoint(x: 160, y: 240)
        self.addChild(planeSprite!)
    }
    
    func touchDown(atPoint pos : CGPoint) {
        planeSprite?.position = pos
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        planeSprite?.position = pos
    }
    
    func touchUp(atPoint pos : CGPoint) {
        planeSprite?.position = pos
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
}
