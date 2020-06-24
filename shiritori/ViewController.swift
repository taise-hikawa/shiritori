//
//  ViewController.swift
//  shiritori
//
//  Created by Sakurako Shimbori on 2020/06/22.
//  Copyright © 2020 Taisei Hikawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITextFieldDelegate{
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var textLabel: UILabel!
    // 文字列保存用の変数
    var textFieldString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTextField.delegate = self
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //キーボードを閉じる
        textField.resignFirstResponder()
        
        //入力された文字を取り出す
        if let word = myTextField.text{
            if word.prefix(1) == textLabel.text?.suffix(1){
                textLabel.numberOfLines += 1
                textLabel.text = textLabel.text! + "\n" + word
        
            }else{
                textLabel.numberOfLines += 1
                textLabel.text = textLabel.text! + "\n" + "残念Resetを押してね"
            }
        }
        return true
    }
    
    @IBAction func reset(_ sender: UIButton) {
        textLabel.text = "しりとり"
        textLabel.numberOfLines = 1
    }
    
    
}

