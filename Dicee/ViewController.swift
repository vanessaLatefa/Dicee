//
//  ViewController.swift
//  Dicee
//
//  Created by Vanessa Latefa Pampilo on 2/26/19.
//  Copyright © 2019 Vanessa Latefa Pampilo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDice1 : Int = 0
    var randomDice2 : Int = 0

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }


    @IBAction func rollButton_was_pressed(_ sender: UIButton) {
        randomDice1 = Int.random(in: 0 ... 5)
        randomDice2 = Int.random(in: 0 ... 5)
        
        print (randomDice1)
        print (randomDice2)
        
        updateImageView()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        updateImageView()
    }
    
    func updateImageView (){
        
        diceImageView1.image = UIImage (named: diceArray[randomDice1])
        diceImageView2.image = UIImage (named: diceArray[randomDice2])
    }
}

