//
//  ViewController.swift
//  homework(including traffic light)
//
//  Created by Roman Novikov on 2/24/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var changeColorButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.alpha = 1
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        redView.layer.cornerRadius = redView.frame.height / 2
        yellowView.layer.cornerRadius = yellowView.frame.height / 2
        greenView.layer.cornerRadius = greenView.frame.height / 2
        
        
    }
    @IBAction func pressingChangeColorButton() {
        if redView.alpha == 1 {
            redView.alpha = 0.3
            yellowView.alpha = 1
            changeColorButton.setTitle("Next!", for: .normal)
        } else if
            yellowView.alpha == 1 {
            yellowView.alpha = 0.3
            greenView.alpha = 1
        } else {
            greenView.alpha = 0.3
            redView.alpha = 1

        }
    }
}

