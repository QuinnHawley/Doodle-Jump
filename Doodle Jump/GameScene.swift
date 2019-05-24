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
        
        
        player = SKSpriteNode(color: .red, size: CGSize(width: 100, height: 100))
        player.position = CGPoint(x: frame.width * 0.5, y: frame.height * 0.8)
        player.physicsBody?.mass = 0.5
        player.physicsBody?.velocity = CGVector(dx: 500, dy: 500)
        physicsBody?.affectedByGravity = true
        physicsBody?.allowsRotation = true
        physicsBody?.isDynamic = true
        physicsBody?.restitution = 0.0
        physicsBody?.friction = 0.0
        addChild(player)
        
        
        
        
    
    }
}
