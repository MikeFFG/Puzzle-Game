//
//  Boundary.swift
//  Puzzle Game
//
//  Created by Michael Burke on 8/4/15.
//  Copyright (c) 2015 Imminent Apps. All rights reserved.
//

import Foundation
import SpriteKit

var shape:SKShapeNode?

class Boundary:SKNode {

    let imageSize = CGRectMake(backgroundImage!.position.x - backgroundImage!.size.width / 2,backgroundImage!.position.y - backgroundImage!.size.height / 2, backgroundImage!.size.width - 15, backgroundImage!.size.height - 15)
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init() {
        
        super.init()
        
        
        
        shape = SKShapeNode(rect: imageSize)
        addChild(shape!)
        
        setUpPhysics()
    }
    
    func setUpPhysics() {
        
        
        self.physicsBody = SKPhysicsBody(edgeLoopFromRect: imageSize)
        self.physicsBody!.friction = 0 //0 is slippery like marble
        self.physicsBody!.dynamic = false
        self.physicsBody!.restitution = 0.5 //bouncy
        self.physicsBody!.allowsRotation = false
        self.physicsBody!.affectedByGravity = false
        
        
    }
    
}
