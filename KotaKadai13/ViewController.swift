//
//  ViewController.swift
//  KotaKadai13
//
//  Created by 前田航汰 on 2022/03/05.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private let datas: KeyValuePairs = ["りんご": false, "みかん": true, "バナナ": false, "パイナップル": true]

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell

        cell.listLabel.text = datas[indexPath.row].key
        if datas[indexPath.row].value == false {
            cell.checkImage.isHidden = true
        }

        return cell
    }

}
