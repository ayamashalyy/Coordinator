//
//  SecondViewController.swift
//  CoordinatorDemo
//
//  Created by Aya Mashaly on 04/04/2025.
//

import UIKit

class SecondViewController: UIViewController, Coordinating {
    
    var coordinator: Coordinator?
    @IBOutlet weak var goToThirdButton: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        title = "Second"
        goToThirdButton?.layer.cornerRadius = 25
    }
    
    @IBAction func goToThirdButton(_ sender: UIButton) {
        coordinator?.eventOccurred(with: .goToThirdScreen)
    }
}
