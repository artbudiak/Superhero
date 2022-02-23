//
//  Storyboarded.swift
//  SuperheroBudiak
//
//  Created by Артем Будяк on 21.02.2022.
//

import UIKit

protocol Storyboarded {
    static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController{
    static func instantiate() -> Self {
        let storyboardIdentifier = String(describing: self)
        let storyboard = UIStoryboard(name: storyboardIdentifier, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: storyboardIdentifier) as! Self
    }
}
