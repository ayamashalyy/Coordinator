//
//  ThirdViewController.swift
//  CoordinatorDemo
//
//  Created by Aya Mashaly on 04/04/2025.
//

import UIKit

class ThirdViewController: UIViewController, Coordinating {
    
    var coordinator: Coordinator?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Third"
        view.backgroundColor = .systemBlue
    }
}
