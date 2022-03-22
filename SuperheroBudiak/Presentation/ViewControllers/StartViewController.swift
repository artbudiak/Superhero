//
//  ViewController.swift
//  SuperheroBudiak
//
//  Created by Артем Будяк on 15.02.2022.
//

import UIKit

class StartViewController: UIViewController, Storyboarded {
    
    @IBOutlet weak var titleLabelText: UILabel!
    @IBOutlet weak var subTitleLabelText: UILabel!
    @IBOutlet weak var maleButton: yellowRoundedButton!
    @IBOutlet weak var femaleButton: yellowRoundedButton!
    @IBOutlet weak var maleImageView: UIImageView!
    @IBOutlet weak var femaleImageView: UIImageView!
    @IBOutlet weak var gradientView: UIView!
    
    
    @IBAction func characterChoose(_ sender: UIButton) {
        let profileSex = Sex.getStringValueByTag(sender.tag)
        viewModel.createNewUser(profileSex)
        coordinator?.home()
    }
    
    let viewModel = StartViewModel()
    var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        uiConfiguration()
    }
    
    func uiConfiguration() {
        
        titleLabelText.text = viewModel.titleLabelText
        titleLabelText.textColor = .customYellow
        titleLabelText.font = UIFont.futuraBoldWithSize32
        
        subTitleLabelText.text = viewModel.subtitleLabelText
        subTitleLabelText.textColor = .white
        subTitleLabelText.font = UIFont.saira16Regular
        
        maleImageView.image = UIImage(named: viewModel.manImageName)
        maleButton.setTitle(viewModel.maleButtonText, for: .normal)
        maleButton.backgroundColor = .customYellow
        maleButton.titleLabel?.font = UIFont.saira18Regular
        
        femaleImageView.image = UIImage(named: viewModel.womanImageName)
        femaleButton.setTitle(viewModel.femaleButtonText, for: .normal)
        femaleButton.backgroundColor = .customYellow
        femaleButton.titleLabel?.font = UIFont.saira18Regular
        
        gradientView.addBlackGradientInForeground()
    }
    
    


}

