//
//  GameScene.swift
//  ClosuresExample2
//
//  Created by mitchell hudson on 8/23/16.
//  Copyright (c) 2016 Mitchell Hudson. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    let joystick = Joystick()
    let box = SKSpriteNode(color: UIColor.redColor(), size: CGSize(width: 40, height: 40))
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        addChild(joystick)
        
        setup()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        /* Called when a touch begins */
        joystick.show(touches.first!)
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        joystick.move(touches.first!)
    }
    
    
    func setup() {
        physicsBody = SKPhysicsBody(edgeLoopFromRect: frame)
        
        addChild(box)
        box.physicsBody = SKPhysicsBody(rectangleOfSize: box.size)
        box.position.x = size.width / 2
        box.position.y = size.height / 2
        
        physicsWorld.gravity = CGVector(dx: 0, dy: 0)
    }
    
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        
    }
}
