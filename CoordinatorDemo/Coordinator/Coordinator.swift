//
//  Coordinator.swift
//  CoordinatorDemo
//
//  Created by Aya Mashaly on 04/04/2025.
//

import Foundation
import UIKit

enum Event {
    case buttonTapped
    case goToThirdScreen
}

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController? { get set }
    var childCoordinators: [Coordinator] { get set }
    
    func eventOccurred(with type: Event)
    func start()
}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}
