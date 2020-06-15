//
//  ViewController.swift
//  HUAnimationLearn
//
//  Created by jw.hu on 2020/6/15.
//  Copyright © 2020 jw.hu. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let cellID = "tableViewCell"
    let dataArr = [HUBezierCircleController()]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        
        cell?.textLabel?.text = String(indexPath.row)
        return cell!
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        self.navigationController?.pushViewController(dataArr[indexPath.row], animated: true)
    }
}

