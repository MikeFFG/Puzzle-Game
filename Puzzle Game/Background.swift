//
//  Background.swift
//  Puzzle Game
//
//  Created by Michael Burke on 8/4/15.
//  Copyright (c) 2015 Imminent Apps. All rights reserved.
//

import Foundation
import SpriteKit

var backgroundImage:SKSpriteNode?

class Background:SKNode {
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init() {
        
        super.init()
        
        backgroundImage = SKSpriteNode(imageNamed: "gameback")
        addChild(backgroundImage!)
        
    }
    

    func setBackgroundPosition(theDict:[String:CGFloat]) {
    
    
        backgroundImage?.size.width = theDict["width"]!
        backgroundImage?.size.height = theDict["height"]!
        backgroundImage?.position.x = theDict["position.x"]!
        backgroundImage?.position.y = theDict["position.y"]!
    }
}
    