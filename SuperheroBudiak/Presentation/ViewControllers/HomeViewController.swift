//
//  HomeViewController.swift
//  SuperheroBudiak
//
//  Created by Артем Будяк on 22.02.2022.
//

import Foundation
import UIKit

class HomeViewController: UIViewController, Storyboarded {
    
    @IBOutlet weak var characterImage: UIImageView!
    @IBOutlet weak var characterLabel: UILabel!
    
    var coordinator: MainCoordinator?
    let viewModel = HomeViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        uiConfiguration()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    func uiConfiguration() {
        characterImage.image = UIImage(named: viewModel.characterImageName)
        characterLabel.font = UIFont.saira24Regular
        characterLabel.tintColor = .white
        characterLabel.text = viewModel.characterLabelText

    }
    

}
