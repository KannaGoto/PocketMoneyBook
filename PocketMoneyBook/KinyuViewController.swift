//
//  ShunyuKinyuViewController.swift
//  PocketMoneyBook
//
//  Created by 後藤幹奈 on 2018/05/14.
//  Copyright © 2018年 後藤幹奈. All rights reserved.
//

import UIKit

class ShunyuKinyuViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var shunyuTextField: UITextField!
    @IBOutlet var incomecontentTextField: UITextField!
    @IBOutlet var zandakaLabel: UILabel!
    
    var number: Int = 0
    var income: String! = ""
    var incomecontent: String! = ""
    
    var incomeArray: [String] = []
    var incomecontentArray: [String] = []
    
    let saveData: UserDefaults = UserDefaults.standard
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
// Do any additional setup after loading the view.
        
        shunyuTextField.delegate = self
        incomecontentTextField.delegate = self
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
        
        //        incomeLabel.text = String(describing: incomeArray)
        //        incomecontentLabel.text = String(describing: incomecontentArray)
        
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
        
//        if let number = Int(shunyuTextField.text!) {
//            UserDefaults.standard.set(number, value(forKey: "shunyu")
//        }
    }
    
    
    
    @IBAction func incomedata() {
        performToShunyu()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func performToShunyu() {
        performSegue(withIdentifier: "toshunyudata", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toshunyudata" {
            let shunyuViewController = segue.destination as! ShunyuViewController
            shunyuViewController.incomeArray = self.incomeArray
            shunyuViewController.incomecontentArray = self.incomecontentArray
        }
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
