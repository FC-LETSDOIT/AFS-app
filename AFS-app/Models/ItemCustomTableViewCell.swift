//
//  CustomTableViewCell.swift
//  AFS-app
//
//  Created by 安井隼人 on 2018/05/13.
//  Copyright © 2018年 安井隼人. All rights reserved.
//

import UIKit

class ItemCustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var ItemImageView: UIImageView!
    @IBOutlet weak var CurOrdQtyLabel: UILabel!
    @IBOutlet weak var ItemNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
