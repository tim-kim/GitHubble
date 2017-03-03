//
//  Protocol.swift
//  GithubDemo
//
//  Created by Tim Kim on 3/2/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import Foundation

protocol SettingsPresentingViewControllerDelegate: class {
    func didSaveSettings(settings: GithubRepoSearchSettings)
    func didCancelSettings()
}
