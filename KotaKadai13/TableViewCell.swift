//
//  TableViewCell.swift
//  KotaKadai13
//
//  Created by 前田航汰 on 2022/03/05.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet private weak var checkImage: UIImageView!
    @IBOutlet private weak var listLabel: UILabel!

    func configure(checkItem: CheckItem) {
        checkImage.isHidden = !checkItem.isChecked
        listLabel.text = checkItem.name
    }
}
