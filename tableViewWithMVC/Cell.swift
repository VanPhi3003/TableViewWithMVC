//
//  Cell.swift
//  tableViewWithMVC
//
//  Created by Cntt36 on 7/5/17.
//  Copyright © 2017 nhom5. All rights reserved.
//

import UIKit

class ListCell: UITableViewCell {
    
    @IBOutlet weak var lblName: UILabel!
    
    func configure(name: String) {
        self.lblName.text = name
    }
}
