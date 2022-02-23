//
//  StartViewModel.swift
//  SuperheroBudiak
//
//  Created by Артем Будяк on 23.02.2022.
//

import Foundation

struct StartViewModel {
    
    let manImageName = "man"
    let womanImageName = "woman"
    let titleLabelText = "SUPERHERO"
    let subtitleLabelText = "выберите героя"
    let maleButtonText = "SUPERMAN"
    let femaleButtonText = "SUPERGIRL"
    
    func createNewUser(_ sex: String) {
        ProfileManager.sharedInstance.createDefaultProfile(with: sex)
    }
}

