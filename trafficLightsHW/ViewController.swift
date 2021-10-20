//
//  ViewController.swift
//  trafficLightsHW
//
//  Created by Alisa Ts on 19.10.2021.
//

import UIKit

enum Colors {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var textButton: UIButton!
    
   
    private var colors = Colors.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        view.backgroundColor = .gray
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.height / 2
        yellowLight.layer.cornerRadius = redLight.frame.height / 2
        greenLight.layer.cornerRadius = redLight.frame.height / 2
    }
    
    @IBAction func toggleButton() {
        textButton.setTitle("Next", for: .normal)
        
        switch colors {
        case .red:
            greenLight.alpha = 0.3
            redLight.alpha  = 1
            colors = .yellow
        case .yellow:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            colors = .green
        case .green:
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            colors = .red
        }
    }
    
    
}

