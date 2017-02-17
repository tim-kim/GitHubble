//
//  TableViewCell.swift
//  GithubDemo
//
//  Created by Tim Kim on 2/16/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var repoView: UIImageView!
    @IBOutlet weak var starsLabel: UILabel!
    @IBOutlet weak var forksLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var repo: GithubRepo! {
        didSet {
            nameLabel.text = repo.name
            ownerLabel.text = repo.ownerHandle
            repoView.setImageWith(URL(string: repo.ownerAvatarURL!)!)
            descriptionLabel.text = repo.repoDescription
            starsLabel.text = "\(repo.stars!)"
            forksLabel.text = "\(repo.forks!)"
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
