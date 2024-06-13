//
//  ViewController.swift
//  Counter
//
//  Created by D. K. on 13.06.24.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var counterLabel: UILabel!
    @IBOutlet private weak var buttonPress: UIButton!
    
    private var counter = 0
    
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
    
    @IBAction private func buttonPressed(_ sender: Any) {
        counter += 1
        updateCounterLabel()
    }
    
    private func updateCounterLabel() {
        counterLabel.text = "\(counter)"
    }
}

