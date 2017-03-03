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
    var settings: GithubRepoSearchSettings?
    var settingsValue: Int = 0
    
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let settings = settings {
            starLabel.text = "\(settings.minStars)"
            slider.value = Float(settings.minStars)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        settings?.minStars = Int(slider.value)
        self.delegate?.didSaveSettings(settings: settings!)
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func cancelButtonTapped(_ sender: Any) {
        self.delegate?.didCancelSettings()
        dismiss(animated: true, completion: nil)
    }
    @IBAction func onSliderChange(_ sender: Any) {
        self.settingsValue = Int(slider.value)
        self.starLabel.text = String(self.settingsValue)
    }
    
}
