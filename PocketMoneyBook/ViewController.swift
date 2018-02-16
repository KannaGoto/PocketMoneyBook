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
    @IBOutlet var zandakaLabel: UILabel!
    @IBOutlet var incomeLabel: UILabel!
    @IBOutlet var spendingLabel: UILabel!
    var number: Int = 0
    var income: String! = ""
    var spending: String! = ""
    
    let saveData: UserDefaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        shunyuTextField.delegate = self
        shishutuTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveshunyu() {
        saveData.set(shunyuTextField.text, forKey: "shunyu")
        shunyuTextField.text = saveData.object(forKey: "shunyu") as? String
        
        income = shunyuTextField.text!
        
        number = number + Int(income)!
        
        zandakaLabel.text = String(number)
        
        incomeLabel.text = String(income)
        
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
        shishutuTextField.text = saveData.object(forKey: "shishutu") as? String
        
        spending = shishutuTextField.text!
        
        number = number - Int(spending)!
        
        zandakaLabel.text = String(number)
        
        spendingLabel.text = String(spending)
        
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



