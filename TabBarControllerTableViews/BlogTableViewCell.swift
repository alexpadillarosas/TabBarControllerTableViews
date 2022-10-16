//
//  BlogTableViewCell.swift
//  TabBarControllerTableViews
//
//  Created by alex on 16/10/2022.
//

import UIKit

class BlogTableViewCell: UITableViewCell {


    @IBOutlet weak var blogImage: UIImageView!
    
    @IBOutlet weak var blogName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
