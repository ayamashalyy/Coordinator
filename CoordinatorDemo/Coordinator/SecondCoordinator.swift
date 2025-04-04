//
//  SecondCoordinator.swift
//  CoordinatorDemo
//
//  Created by Aya Mashaly on 04/04/2025.
//

import Foundation
import UIKit

class SecondCoordinator: Coordinator {
    var navigationController: UINavigationController?
    var childCoordinators: [Coordinator] = [] // If you need other helpers later.
    
    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
    
    func eventOccurred(with type: Event) {
        switch type {
        case .buttonTapped:
            break
        case .goToThirdScreen:
            var vc: UIViewController & Coordinating = ThirdViewController()
            vc.coordinator = self
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    func start() {
        var vc: UIViewController & Coordinating = SecondViewController()
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }
}
