//
//  ViewController.swift
//  KotaKadai13
//
//  Created by 前田航汰 on 2022/03/05.
//

import UIKit

struct CheckItem {
    var name: String
    var isChecked: Bool
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private let checkItems: [CheckItem] = [
        .init(name: "りんご", isChecked: false),
        .init(name: "みかん", isChecked: true),
        .init(name: "バナナ", isChecked: false),
        .init(name: "パイナップル", isChecked: true),
    ]

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return checkItems.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        cell.configure(checkItem: checkItems[indexPath.row])
        return cell
    }

}
