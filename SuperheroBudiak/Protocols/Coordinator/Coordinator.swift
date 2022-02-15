//
//  Coordinator.swift
//  SuperheroBudiak
//
//  Created by Артем Будяк on 15.02.2022.
//

import UIKit

protocol Coordinator {
    
    var navigationController: UINavigationController { get set }
    
    func start()
}
