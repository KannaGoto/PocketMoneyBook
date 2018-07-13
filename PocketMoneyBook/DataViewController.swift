//
//  DataViewController.swift
//  PocketMoneyBook
//
//  Created by 後藤幹奈 on 2018/07/13.
//  Copyright © 2018年 後藤幹奈. All rights reserved.
//

import UIKit

class DataViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet var datatable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let number = UserDefaults.standard.integer(forKey: "number")
    }
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return incomeArray.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "incomeCell")
//
//        cell?.detailTextLabel?.text = incomeArray[indexPath.row]
//        cell?.textLabel?.text = incomecontentArray[indexPath.row]
//
//        return cell!
//    }
//
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return spendingArray.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "spendingCell")
//
//        cell?.detailTextLabel?.text = spendingArray[indexPath.row]
//        cell?.textLabel?.text = spendingcontentArray[indexPath.row]
//
//        return cell!
//    }
}





