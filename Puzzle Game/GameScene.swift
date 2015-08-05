//
//  GameScene.swift
//  Puzzle Game
//
//  Created by Michael Burke on 7/25/15.
//  Copyright (c) 2015 Imminent Apps. All rights reserved.
//

import SpriteKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    // MARK: Variables
    var mainBlock:Block?
    var frameNode:SKSpriteNode?
    var boundary:Boundary?
    var backgroundSize = [String:CGFloat]()
    var background:Background?
    
    override func didMoveToView(view: SKView) {
        
        view.showsPhysics = false
       // physicsWorld.gravity = CGVectorMake(0, 0)
        physicsWorld.contactDelegate = self
        
        /* Setup your scene here */
       // frameNode = SKSpriteNode(imageNamed: "gameback")
        let position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
        backgroundSize["position.x"] = position.x
        backgroundSize["position.y"] = position.y
        backgroundSize["width"] = self.frame.size.width
        backgroundSize["height"] = self.frame.size.height/2
        
        background = Background()
        background!.setBackgroundPosition(backgroundSize)
        self.addChild(background!)
        
        boundary = Boundary()
        self.addChild(boundary!)
        
        mainBlock = Block()
        mainBlock!.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
        self.addChild(mainBlock!)
        mainBlock?.name = "mainBlock"
        
    }
        
        override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        /* Called when a touch begins */
    
        
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    
    
    
}
