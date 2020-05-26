//
//  ViewController.swift
//  SecondApp
//
//  Created by hongjuyeon_dev on 2020/05/26.
//  Copyright © 2020 hongjuyeon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func callBtnClick(_ sender: UIButton) {
        if let url = URL(string: "myFirstApp://?id=hello&name=Nayana") {
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: { isFinished in
                    if isFinished {
                        print("open url Finish")
                    }
                })
            }
            else {
                print("cannot open url")
            }
        }
        
    }
    
}

