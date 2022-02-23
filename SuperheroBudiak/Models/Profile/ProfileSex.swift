//
//  ProfileSex.swift
//  SuperheroBudiak
//
//  Created by Артем Будяк on 23.02.2022.
//

enum ProfileSex: String {
    case male, female
    
    static func getStringValueByTag(_ tag: Int) -> String {
        switch tag {
        case 1:
            return ProfileSex.male.rawValue
        case 2:
            return ProfileSex.female.rawValue
        default:
            return ProfileSex.male.rawValue
        }
    }
}
