//
//  TableViewCell.swift
//  Shopping
//
//  Created by Yang, Yuehong | OSPD on 2017/07/05.
//  Copyright © 2017年 Yang, Yuehong | OSPD. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    //MARK: Properties
    @IBOutlet weak var mName: UITextField!
    @IBOutlet weak var mPrice: UITextField!
    @IBOutlet weak var mShop: UITextField!
    
    //MARK: Private Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func editBtnClick(_ sender: Any) {
        
    }
}
