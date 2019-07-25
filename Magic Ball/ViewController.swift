//
//  ViewController.swift
//  Magic Ball
//
//  Created by Ulter Mysaic on 7/25/19.
//  Copyright © 2019 Kevin Castillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray: [String] = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newBallImage()
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    func newBallImage(){
        
        let randomBallNumber: Int = Int.random(in: 0 ... 4 )
        imageView.image = UIImage(named: ballArray[randomBallNumber])
        
    }
    
}

