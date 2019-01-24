//
//  ViewController.swift
//  Dicee
//
//  Created by Artur Mello on 24/01/19.
//  Copyright © 2019 Artur Mello. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // containers that will store
    // random number generators for each dice
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    @IBOutlet weak var diceViewImage1: UIImageView!
    @IBOutlet weak var diceViewImage2: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("Rolando dados \n")
        
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        changeDiceImage(randomDiceIndex: randomDiceIndex1, diceViewImage: diceViewImage1)
        changeDiceImage(randomDiceIndex: randomDiceIndex2, diceViewImage: diceViewImage2)
    }
    
    func changeDiceImage(randomDiceIndex: Int, diceViewImage: UIImageView) {
        switch randomDiceIndex {
        case 1:
            diceViewImage.image = #imageLiteral(resourceName: "dice1")
            break
        case 2:
            diceViewImage.image = #imageLiteral(resourceName: "dice2")
            break
        case 3:
            diceViewImage.image = #imageLiteral(resourceName: "dice3")
            break
        case 4:
            diceViewImage.image = #imageLiteral(resourceName: "dice4")
            break
        case 5:
            diceViewImage.image = #imageLiteral(resourceName: "dice5")
            break
        case 6:
            diceViewImage.image = #imageLiteral(resourceName: "dice6")
            break
        default:
            break
        }
    }
}

