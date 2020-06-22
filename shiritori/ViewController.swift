//
//  ViewController.swift
//  shiritori
//
//  Created by Sakurako Shimbori on 2020/06/22.
//  Copyright © 2020 Taisei Hikawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    // 文字列保存用の変数
    var textFieldString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textLabel.text = "しりとり"
    }
    
    @IBAction func reset(_ sender: UIButton) {
        textLabel.text = "しりとり"
    }
    @IBAction func textSend(_ sender: UIButton) {
        // TextFieldから文字を取得
        textFieldString = textField.text!

        // TextFieldの中身をクリア
        textField.text = ""
    }
    
    
}

