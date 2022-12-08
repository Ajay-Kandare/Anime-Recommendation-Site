//
//  ViewController.swift
//  novo1
//
//  Created by Student on 02/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBOutlet weak var showimage: UIImageView!
    var images: [UIImage] = [ UIImage(named: "onepiece")!,
    UIImage(named: "naruto")!,
    UIImage(named: "bleach")!,
    UIImage(named: "sololeveling")!,
    UIImage(named: "codegeass")!,
    UIImage(named: "the beginning")!,    UIImage(named: "onepiece")!,
    ]

    @IBAction func loginbtn(_ sender: Any) {
        performSegue(withIdentifier: "gotologin", sender: self)
    }
    

    
    @IBAction func signbtn(_ sender: Any) {
        performSegue(withIdentifier: "gotosignup", sender: self)    }
    
    
    
    @IBOutlet weak var imageplay: UIImageView!
    @IBAction func getstartedbtn(_ sender: Any) {
        imageplay.animationImages = images
        imageplay.animationDuration = 6
        imageplay.animationRepeatCount = 10
        imageplay.startAnimating()
        
        
        
        
    }
    
    
    
}

