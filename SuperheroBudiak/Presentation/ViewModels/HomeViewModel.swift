//
//  HomeViewModel.swift
//  SuperheroBudiak
//
//  Created by Артем Будяк on 22.02.2022.
//

import Foundation

struct HomeViewModel {
    
    private let maleImageName = "man-gradient"
    private let femaleImageName = "woman-gradient"
    private let maleLabelText = "Superman"
    private let femaleLabelText = "Supergirl"
    
    public var characterImageName: String
    public var characterLabelText: String
    
    init() {
        let profile = ProfileManager.sharedInstance.userProfile!
        let sex = ProfileSex(rawValue: profile.sex)
        switch sex {
        case .male:
            characterImageName = maleImageName
            characterLabelText = maleLabelText
        case .female:
            characterImageName = femaleImageName
            characterLabelText = femaleLabelText
        default:
            characterImageName = maleImageName
            characterLabelText = maleLabelText
        }
    }
    
}
