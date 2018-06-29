//
//  ShishutuKinyuViewController.swift
//  PocketMoneyBook
//
//  Created by 後藤幹奈 on 2018/05/14.
//  Copyright © 2018年 後藤幹奈. All rights reserved.
//

import UIKit

class ShishutuKinyuViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var shishutuTextField: UITextField!
    @IBOutlet var spendingcontentTextField: UITextField!
    @IBOutlet var zandakaLabel: UILabel!
    
    var number: Int = 0
    var spending: String! = ""
    var spendingcontent: String! = ""
    
    var spendingArray: [String] = []
    var spendingcontentArray: [String] = []
    
    let saveData: UserDefaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        shishutuTextField.delegate = self
        spendingcontentTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveshishutu() {
        saveData.set(shishutuTextField.text, forKey: "shishutu")
        saveData.set(spendingcontentTextField.text, forKey: "spendingcontent")
        
        
        spending = shishutuTextField.text!
        
        number = number - Int(spending)!
        
        zandakaLabel.text = String(number)
        
        spendingArray.append(shishutuTextField.text!)
        spendingcontentArray.append(spendingcontentTextField.text!)
        
        //        spendingLabel.text = String(describing: spendingArray)
        //        spendingcontentLabel.text = String(describing: spendingcontentArray)
        
        let alert: UIAlertController = UIAlertController(title: "保存", message: "支出の保存が完了しました。",
                                                         preferredStyle: .alert)
        
        alert.addAction(
            UIAlertAction(
                title: "OK",
                style:  .default,
                handler:  { action in
                    print("OKボタンが押されました！")
            }
            )
        )
    }
        
        @IBAction func spendingdata() {
            performToShishutu()
        }
        
        func performToShishutu() {
            performSegue(withIdentifier: "toshishutudata", sender: nil)
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "toshishutudata" {
                let shishutuViewController = segue.destination as! ShishutuViewController
                shishutuViewController.spendingArray = self.spendingArray
                shishutuViewController.spendingcontentArray = self.spendingcontentArray
                
            }
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
