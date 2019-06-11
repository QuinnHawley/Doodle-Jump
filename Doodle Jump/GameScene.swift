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
    var doodle = SKSpriteNode()
    
    var background = SKSpriteNode()
    
    var bottom = SKSpriteNode()
    
    var platform = SKSpriteNode()
    
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
        
        
        func addPlatform()
        {
            
            // MARK: - Set up enemy and its movements
            platform = SKSpriteNode(imageNamed: "platform")
            platform.size = CGSize(width: 100, height: 25)
            platform.physicsBody?.affectedByGravity = false
            platform.physicsBody?.allContactedBodies()
            platform.physicsBody?.pinned = true
            platform.physicsBody?.isDynamic = true
            //platform.zPosition = 1
            // this is where the enemy starts
            platform.position = CGPoint(x: 0, y: 300)
            self.addChild(platform)
            // I want it to move to the end of the screen within 1 sec

        
        
    
    
   
        }
       addPlatform()
        
    }


}
