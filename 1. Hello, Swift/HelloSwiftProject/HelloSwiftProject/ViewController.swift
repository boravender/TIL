//
//  ViewController.swift
//  HelloSwiftProject
//
//  Created by Boravender on 2020/08/17.
//  Copyright © 2020 Boravender. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    
    @IBAction func changeLabel(_ sender: Any) {
        lbl.text = "Hello, Swift"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

