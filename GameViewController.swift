//
//  GameViewController.swift
//  OXGame
//
//  Created by niwaka on 2015/03/10.
//  Copyright (c) 2015年 x. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController ,UIGestureRecognizerDelegate{
var scene: GameScene!
    
    @IBAction func didTap(sender: UITapGestureRecognizer) {
        let location = sender.locationInView(view)
        println("tapped at \(location.x), \(location.y)")
        scene.mark(location)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let skView = view as! SKView
        skView.multipleTouchEnabled = false
        
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .AspectFill
        skView.presentScene(scene)
    }


    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
