// GameScene.swift
//  Doodle Jump
//  Created by  on 5/22/19.
//  Copyright © 2019 Quinns apps. All rights reserved.

import SpriteKit
import GameplayKit

class GameScene: SKScene
{
    //rob is epic
    //yo Quinn sama
    var player = SKSpriteNode()
    
    override func didMove(to view: SKView)
    {
        let borderBody = SKPhysicsBody(edgeLoopFrom: self.frame)
        borderBody.friction = 0
        borderBody.restitution = 1
        physicsBody = borderBody
        physicsWorld.gravity = CGVector(dx: 0, dy: -9.8)
    
        
        
        
        
    
    }
}
