//
//  ShishutuViewController.swift
//  PocketMoneyBook
//
//  Created by 後藤幹奈 on 2018/02/09.
//  Copyright © 2018年 後藤幹奈. All rights reserved.
//

import UIKit

class ShishutuViewController: UIViewController {
    
    @IBOutlet var spendingtable: UITableView!
    
    var spendingArray:[String] = []
    var spendingcontentArray:[String] = []
    let saveData = UserDefaults.standard


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return spendingArray.count
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "spendingCell")
            
            cell?.detailTextLabel?.text = spendingArray[indexPath.row]
            cell?.textLabel?.text = spendingcontentArray[indexPath.row]
            
            return cell!
        }
    }
    


}
