//
//  ProfileSex.swift
//  SuperheroBudiak
//
//  Created by Артем Будяк on 23.02.2022.
//

import Foundation

enum Sex: String {
    case male, female
    
    static func getStringValueByTag(_ tag: Int) -> String {
        switch tag {
        case 1:
            return Sex.male.rawValue
        case 2:
            return Sex.female.rawValue
        default:
            return Sex.male.rawValue
        }
    }
}
