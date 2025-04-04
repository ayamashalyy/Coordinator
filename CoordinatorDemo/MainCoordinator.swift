//
//  MainCoordinator.swift
//  CoordinatorDemo
//
//  Created by Aya Mashaly on 04/04/2025.
//

import Foundation
import UIKit


class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController?
    var childCoordinators: [Coordinator] = []  // Here we put the helpers.
    
    
    func eventOccurred(with type: Event) {
        switch type {
        case .buttonTapped:
            // Instead of navigating to the second screen by itself, it will fetch the helper.
            let child = SecondCoordinator(navigationController: navigationController)
            childCoordinators.append(child) // Add the helper to the list.
            child.start() // Tell the helper to start its task.
            
        case .goToThirdScreen:
            // It won't handle it here, the helper will take responsibility.
            break
        }
    }
    
    func start() {
        var vc: UIViewController & Coordinating = FirstViewController()
        vc.coordinator = self
        navigationController?.setViewControllers([vc], animated: false)
    }
}
