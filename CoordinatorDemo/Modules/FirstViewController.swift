//
//  FirstViewController.swift
//  CoordinatorDemo
//
//  Created by Aya Mashaly on 04/04/2025.
//

import UIKit

class FirstViewController: UIViewController, Coordinating {

    @IBOutlet weak var clickButton: UIButton?
    var coordinator: Coordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        title = "Home"
        clickButton?.layer.cornerRadius = 25
    }
    
    @IBAction func clickButton(_ sender: UIButton) {
        coordinator?.eventOccurred(with: .buttonTapped)
    }
}
