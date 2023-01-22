//
//  ChildrenCell.swift
//  FahemTest
//
//  Created by POMAC on 22/01/2023.
//

import UIKit

class ChildrenCell: UITableViewCell {

    @IBOutlet weak var selectedBtn: UIButton!
    @IBOutlet weak var childrenNumLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
