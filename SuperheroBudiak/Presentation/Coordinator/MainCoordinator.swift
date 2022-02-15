//
//  MainCoordinator.swift
//  SuperheroBudiak
//
//  Created by Артем Будяк on 15.02.2022.
//

import UIKit

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let startViewController = StartViewController()
        navigationController.pushViewController(startViewController, animated: false)
    }
    
    
}
