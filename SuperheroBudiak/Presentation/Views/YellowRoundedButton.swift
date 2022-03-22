//
//  YellowRoundedButton.swift
//  SuperheroBudiak
//
//  Created by Артем Будяк on 23.02.2022.
//

import UIKit

final class yellowRoundedButton: UIButton {
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupUI()
    }

    private func setupUI() {
        layer.cornerRadius = layer.frame.height / 2
        tintColor = .black
    }
    
}
