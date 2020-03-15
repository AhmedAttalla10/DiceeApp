//
//  ViewController.swift
//  dicee
//
//  Created by hima attalla on 4/22/19.
//  Copyright © 2019 ahmed attalla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var image1: Int = 0
    var image2: Int = 0
    let images = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
         dicee()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButton(_ sender: Any) {
        dicee()
    }
    func dicee(){
        image1 = Int(arc4random_uniform(6))
        image2 = Int(arc4random_uniform(6))
        diceImageView1.image = UIImage(named: images[image1])
        diceImageView2.image = UIImage(named: images[image2])
    }
  // override func motionEnded(_ motion: UIEventSubtype, with event: // UIEvent?) {
      //  dicee()
    //}
    
    
}

