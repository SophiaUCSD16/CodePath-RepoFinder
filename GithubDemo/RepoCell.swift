//
//  RepoCell.swift
//  GithubDemo
//
//  Created by Jane on 2/16/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit
import MBProgressHUD

class RepoCell: UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var AvartarImageView: UIImageView!
    @IBOutlet var ownerLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var starLabel: UILabel!
    @IBOutlet var forkLabel: UILabel!
    
    var repoData: GithubRepo! {
       didSet{
            nameLabel.text = repoData.name
            AvartarImageView.setImageWith(repoData.imageURL!)
            starLabel.text = "\(repoData.stars!)"  != nil ?  String(repoData.stars!) : ""
            forkLabel.text = "\(repoData.forks!)"  != nil ?  String(repoData.forks!) : ""
            ownerLabel.text = repoData.ownerHandle
            descriptionLabel.text = repoData.description_brief
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
