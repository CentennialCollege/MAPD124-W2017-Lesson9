//
//  ScoreManager.swift
//  MAPD124-W2017-Lesson9
//
//  Created by Tom Tsiliopoulos on 2017-03-21.
//  Copyright © 2017 Tom Tsiliopoulos. All rights reserved.
//

import SpriteKit
import UIKit

class ScoreManager {
    // Instance Variables
    private var _score: Int?
    private var _lives: Int?
    
    // Public Properties
    public var Score:Int {
        get {
            return self._score!
        }
        
        set {
            self._score = newValue
        }
    }
    
    public var Lives:Int {
        get {
            return self._lives!
        }
        
        set {
            self._lives = newValue
        }
    }
    
    // constructor / initializer
    init() {
        self.Start()
    }
    
    func Start() {
        self.Lives = 5
        self.Score = 0
    }
    
    func Update(scoreLabel:UILabel, livesLabel:UILabel) {
        scoreLabel.text = "Score: \(self.Score)"
        livesLabel.text = "Lives: \(self.Lives)"
    }
}
