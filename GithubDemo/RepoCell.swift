//
//  RepoCell.swift
//  GithubDemo
//
//  Created by Jane on 2/16/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class RepoCell: UITableViewCell {
    
    @IBOutlet weak var AvartarImageView: UIImageView!
    
    @IBOutlet weak var forkIcon: UIImageView!
    @IBOutlet weak var starIcon: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var forkLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var descirptionLabel: UILabel!
    
    var repoData: GithubRepo! {
        didSet{
            nameLabel.text = repoData.name
            AvartarImageView.setImageWith(repoData.imageURL!)
            starLabel.text = repoData.stars as! String
            forkLabel.text = repoData.forks as! String
            ownerLabel.text = repoData.ownerHandle
            descirptionLabel.text = repoData.description_brief
            
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
