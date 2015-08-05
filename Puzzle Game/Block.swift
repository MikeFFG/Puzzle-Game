//
//  Block.swift
//  Puzzle Game
//
//  Created by Michael Burke on 8/4/15.
//  Copyright (c) 2015 Imminent Apps. All rights reserved.
//

import Foundation
import SpriteKit


var objectSprite:SKSpriteNode?

class Block:SKNode {
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init() {
        
        super.init()
        let image = "blockg"
        objectSprite = SKSpriteNode(imageNamed: image)
        addChild(objectSprite!)
        
        
        
        // MARK: Set up physics
        
        self.physicsBody = SKPhysicsBody(rectangleOfSize: objectSprite!.size)
        self.physicsBody!.friction = 0 //0 is slippery like marble
        self.physicsBody!.dynamic = true
        self.physicsBody!.restitution = 0 //bouncy
        self.physicsBody!.allowsRotation = false
        self.physicsBody!.affectedByGravity = false
        self.userInteractionEnabled = true
        
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        println("touched")
        var touch = touches.first as! UITouch
        var touchLocation = touch.locationInNode(self)
    }
    
    override func touchesMoved(touches: Set<NSObject>, withEvent event: UIEvent) {
        var touch = touches.first as! UITouch
        var touchLocation = touch.locationInNode(self)
        var previousLocation = touch.previousLocationInNode(self)
        
        var locationX = self.position.x + (touchLocation.x - previousLocation.x)
        var locationY = self.position.y + (touchLocation.y - previousLocation.y)
        self.position = CGPointMake(locationX, locationY)
        
    }
    

    
    
}
