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
    //var childCoordinators: [Coordinator] = []
    
    func eventOccurred(with type: Event) {
        switch type {
        case .buttonTapped:
            var vc: UIViewController & Coordinating = SecondViewController()
            vc.coordinator = self
            navigationController?.pushViewController(vc, animated: true)
        case .goToThirdScreen:
            var vc: UIViewController & Coordinating = ThirdViewController()
            vc.coordinator = self
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    func start() {
        var vc: UIViewController & Coordinating = FirstViewController()
        vc.coordinator = self
        navigationController?.setViewControllers([vc], animated: false)
    }
    
    
}
