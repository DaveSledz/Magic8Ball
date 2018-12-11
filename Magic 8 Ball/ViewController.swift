//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Marcin Sledz on 18/11/2018.
//  Copyright © 2018 Dawid Sledz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber: Int = 0
    
    func setRandomBackroundColor() {
        
        let colors = [
            UIColor(red: 235/255.0, green: 90/255.0, blue: 120/255.0, alpha: 1.0),
            UIColor(red: 74/255.0, green: 230/255.0, blue: 227/255.0, alpha: 1.0),
            UIColor(red: 254/255.0, green: 209/255.0, blue: 64/255.0, alpha: 1.0),
            UIColor(red: 58/255.0, green: 72/255.0, blue: 195/255.0, alpha: 1.0),
            UIColor(red: 210/255.0, green: 218/255.0, blue: 226/255.0, alpha: 1.0)
        ]
        let randomColor = Int(arc4random_uniform(UInt32 (colors.count)))
        
        UIView.animate(withDuration: 0.5, animations: {
            self.view.backgroundColor = colors[randomColor]
            }, completion: nil)
        }

    func setRandomImage() {
        
        randomBallNumber = Int.random(in: 0 ... 4)
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
        
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: Any) {
        setRandomBackroundColor()
        setRandomImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        setRandomBackroundColor()
        setRandomImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setRandomBackroundColor()
        setRandomImage()
    }

}

