//
//  HeaderIBCell.swift
//  TableViewTutorial
//
//  Created by Victor Roldan on 28/08/21.
//

import UIKit

class HeaderIBCell: UITableViewHeaderFooterView {

    @IBOutlet weak var titleLabel: UILabel!
    
    func setData(title : String){
        titleLabel.text = title
    }
}
