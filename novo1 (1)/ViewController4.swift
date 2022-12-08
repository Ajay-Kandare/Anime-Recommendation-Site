//
//  ViewController4.swift
//  novo1
//
//  Created by Student on 15/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {
    
    var caughtvalue: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl.text = "ajay"

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var lbl: UILabel!
    
    
    
    @IBAction func animebtn(_ sender: Any) {
        performSegue(withIdentifier:  "gotoanime", sender:  self)
        
    }
    
    @IBAction func mangabtn(_ sender: Any) {
        performSegue(withIdentifier:  "gotomanga", sender: self)
    }
    
}
