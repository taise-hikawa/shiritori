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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textLabel.text=""
    }
    @IBAction func reset(_ sender: Any) {
        textLabel.text=""
    }
    
    @IBAction func testSend(_ sender:UISlider) {
        textLabel.text="\(sender.value)"
        
    }
    
}

