//
//  ShunyuViewController.swift
//  PocketMoneyBook
//
//  Created by 後藤幹奈 on 2018/02/09.
//  Copyright © 2018年 後藤幹奈. All rights reserved.
//

import UIKit

class ShunyuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
  
    

    @IBOutlet var incometable: UITableView!
    
    var incomeArray:[String] = []
    var incomecontentArray:[String] = []
     let saveData = UserDefaults.standard

    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
//        let saveData = UserDefaults.standard
//        incomeArray = saveData.array(forKey: "shunyu") as! [String]
//        incomecontentArray = saveData.array(forKey: "incomecontent") as! [String]
//        print("中身は",incomeArray)
//        shunyuTextLabel.text = saveData.object(forkey: "shunyu")
        
        incometable.dataSource = self
        incometable.delegate = self

        // Do any additional setup after loading the view.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    shunyuTextField.text = saveData.object(forkey: "shunyu")

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return incomeArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "incomeCell")
        
        cell?.detailTextLabel?.text = incomeArray[indexPath.row]
        cell?.textLabel?.text = incomecontentArray[indexPath.row]
        
        return cell!
        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
