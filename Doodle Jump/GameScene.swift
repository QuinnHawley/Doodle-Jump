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
    
    var background = SKSpriteNode()
    
    override func didMove(to view: SKView)
    {
        let borderBody = SKPhysicsBody(edgeLoopFrom: self.frame)
        borderBody.friction = 0
        borderBody.restitution = 1
        physicsBody = borderBody
        physicsWorld.gravity = CGVector(dx: 0, dy: -9.8)
    
        background = SKSpriteNode(imageNamed: "background")
        background.size = CGSize(width: frame.width, height: frame.height * 1.2)
        background.position = CGPoint(x: 375, y: 620)
        background.zPosition = -1000
        addChild(background)
        

        
        
        
    
    }
}
