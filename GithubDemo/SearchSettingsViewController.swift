//
//  SearchSettingsViewController.swift
//  GithubDemo
//
//  Created by Tim Kim on 3/2/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class SearchSettingsViewController: UIViewController {
    
    weak var delegate: SettingsPresentingViewControllerDelegate?
    var settings = GithubRepoSearchSettings()
    
    var minimumStars : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveButtonTapped(_ sender: AnyObject) {
        self.delegate?.didSaveSettings(settings: settings)
        dismiss(animated: true, completion: nil)
    }

    @IBAction func cancelButtonTapped(_ sender: AnyObject) {
        self.delegate?.didCancelSettings()
        dismiss(animated: true, completion: nil)
    }
    
    func sliderChange(sender: UISlider) {
        let currentValue = sender.value
        self.minimumStars = Int(currentValue)
    }

}
