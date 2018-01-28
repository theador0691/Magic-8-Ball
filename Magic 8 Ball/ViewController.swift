//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Andrew Taylor on 28/01/2018.
//  Copyright © 2018 Andrew Taylor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomNumber: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateImage()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var imageView: UIImageView!
    
    func updateImage(){
        generateRandomNumber()
        imageView.image = UIImage(named: "ball\(randomNumber)")
    }
    
    @IBAction func askButtonPressed(_ sender: Any) {
        updateImage()
    }
    
    func generateRandomNumber(){
        randomNumber = Int(arc4random_uniform(5)) + 1
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateImage()
    }
}

