//
//  PlayScene.swift
//  MAPD124-W2017-Lesson9
//
//  Created by Tom Tsiliopoulos on 2017-03-14.
//  Copyright © 2017 Tom Tsiliopoulos. All rights reserved.
//

import SpriteKit
import GameplayKit

var screenSize = UIScreen.main.bounds
var screenWidth = screenSize.width
var screenHeight = screenSize.height

class PlayScene: SKScene {

    var oceanSprite:Ocean?
    var islandSprite:Island?
    var planeSprite:Plane?
    var clouds:[Cloud] = []
    
    override func didMove(to view: SKView) {
        oceanSprite = Ocean()
        self.addChild(oceanSprite!)
        
        islandSprite = Island()
        self.addChild(islandSprite!)
        
        planeSprite = Plane()
        self.addChild(planeSprite!)
        
        for count in 0...2 {
            clouds.append(Cloud())
            self.addChild(clouds[count])
        }
    
    }
    
    func touchDown(atPoint pos : CGPoint) {
        planeSprite?.TouchMove(newPos: pos)
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        planeSprite?.TouchMove(newPos: pos)
    }
    
    func touchUp(atPoint pos : CGPoint) {
        planeSprite?.TouchMove(newPos: pos)
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
    
    // Game Loop - trigger 60FPS
    override func update(_ currentTime: TimeInterval) {
        oceanSprite?.Update()
        islandSprite?.Update()
        planeSprite?.Update()
        
        for cloud in clouds {
            cloud.Update()
        }
    }
    
}
