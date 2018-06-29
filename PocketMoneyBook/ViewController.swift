//
//  ViewController.swift
//  PocketMoneyBook
//
//  Created by 後藤幹奈 on 2018/02/09.
//  Copyright © 2018年 後藤幹奈. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ShunyuVC: ShunyuKinyuViewController!
    var ShishutuVC: ShishutuKinyuViewController!
    
    @IBOutlet weak var segmentButton: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        ShunyuVC = main.instantiateViewController(withIdentifier: "ShunyuVC") as! ShunyuKinyuViewController
        ShishutuVC = main.instantiateViewController(withIdentifier: "ShishutuVC") as! ShishutuKinyuViewController
        
        setup()
    }
    
    func setup() {
        segmentButton.setTitle("収入", forSegmentAt: 0)
        segmentButton.setTitle("支出", forSegmentAt: 1)
        self.view.addSubview(ShishutuVC.view)
        self.view.addSubview(ShunyuVC.view) 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func segmentButton(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            self.view.bringSubview(toFront: ShunyuVC.view)
            print("収入")
        case 1:
            self.view.bringSubview(toFront: ShishutuVC.view)
            print("支出")
        default:
            print("")
        }
    }

}
