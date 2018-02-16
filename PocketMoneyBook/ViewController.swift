//
//  ViewController.swift
//  PocketMoneyBook
//
//  Created by 後藤幹奈 on 2018/02/09.
//  Copyright © 2018年 後藤幹奈. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var shunyuTextField: UITextField!
    @IBOutlet var shishutuTextField: UITextField!
    @IBOutlet var incomecontentTextField: UITextField!
    @IBOutlet var spendingcontentTextField: UITextField!
    @IBOutlet var zandakaLabel: UILabel!
    @IBOutlet var incomeLabel: UILabel!
    @IBOutlet var spendingLabel: UILabel!
    @IBOutlet var incomecontentLabel: UILabel!
    @IBOutlet var spendingcontentLabel: UILabel!
    
    var number: Int = 0
    var income: String! = ""
    var spending: String! = ""
    var incomecontent: String! = ""
    var spendingcontent: String! = ""
    
    var incomeArray: [String] = []
    var spendingArray: [String] = []
    var incomecontentArray: [String] = []
    var spendingcontentArray: [String] = []
    
    let saveData: UserDefaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        shunyuTextField.delegate = self
        shishutuTextField.delegate = self
        incomecontentTextField.delegate = self
        spendingcontentTextField.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveshunyu() {
        saveData.set(shunyuTextField.text, forKey: "shunyu")
        saveData.set(incomecontentTextField.text, forKey: "incomecontent")
        
        income = shunyuTextField.text!
        
        number = number + Int(income)!
        
        zandakaLabel.text = String(number)
        
        incomeArray.append(shunyuTextField.text!)
        incomecontentArray.append(incomecontentTextField.text!)
        
        incomeLabel.text = String(describing: incomeArray)
        incomecontentLabel.text = String(describing: incomecontentArray)
        
        let alert: UIAlertController = UIAlertController(title: "保存", message: "収入の保存が完了しました。",
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
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func saveshishutu() {
        saveData.set(shishutuTextField.text, forKey: "shishutu")
        saveData.set(spendingcontentTextField.text, forKey: "spendingcontent")

        
        spending = shishutuTextField.text!
        
        number = number - Int(spending)!
        
        zandakaLabel.text = String(number)
        
        spendingArray.append(shishutuTextField.text!)
        spendingcontentArray.append(spendingcontentTextField.text!)
        
        spendingLabel.text = String(describing: spendingArray)
        spendingcontentLabel.text = String(describing: spendingcontentArray)
        
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
        
        present(alert, animated: true, completion: nil)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}



