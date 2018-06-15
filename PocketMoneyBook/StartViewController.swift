//
//  StartViewController.swift
//  PocketMoneyBook
//
//  Created by 後藤幹奈 on 2018/06/15.
//  Copyright © 2018年 後藤幹奈. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func kinyu() {
        performSegue(withIdentifier: "tokinyu", sender: nil)
    }
    
    @IBAction func set() {
        performSegue(withIdentifier: "toset", sender: nil)
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
