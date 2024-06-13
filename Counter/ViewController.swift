//
//  ViewController.swift
//  Counter
//
//  Created by D. K. on 13.06.24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var buttonPress: UIButton!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "Счётчик:"
        
        counterLabel.font = UIFont.monospacedDigitSystemFont(ofSize: 64, weight: .medium)
        counterLabel.textColor = .systemBlue
        
        buttonPress.setTitle("Нажми меня", for: .normal)
        buttonPress.setTitleColor(.white, for: .normal)
        buttonPress.backgroundColor = .systemBlue
        buttonPress.layer.cornerRadius = 10
        
        
        updateCounterLabel()
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        counter += 1
        updateCounterLabel()
    }
    
    func updateCounterLabel() {
        counterLabel.text = "\(counter)"
    }
}

