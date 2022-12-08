//
//  ViewController2.swift
//  novo1
//
//  Created by Student on 15/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit
var udata = String()
var pdata = String()
var caughtusername = String()
var caughtpassword = String()

class ViewController2: UIViewController {
    var caughtusername : String!
    var caughtpassword : String!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        usernameinp.text = caughtusername
        passwordinp.text = caughtpassword
    }
    

    @IBOutlet weak var usernameinp: UITextField!
    
    @IBOutlet weak var passwordinp: UITextField!
    
    
    @IBAction func loginbtn(_ sender: Any) {
        if (usernameinp.text == "ajay" && passwordinp.text == "ajju asd"){
            performSegue(withIdentifier: "lgotogetstarted", sender: self)
        }
        else if (usernameinp.text == caughtusername && passwordinp.text == caughtpassword){
            
            performSegue(withIdentifier: "lgotogetstarted", sender: self)
            
            
        }
        else{
            let alert = UIAlertController(title:  "incorrect", message:  "username or  password is invalid", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "login again", style: .default, handler: nil))
            alert.addAction(UIAlertAction(title:  "create account", style: .default, handler: nil))
            
            self.present(alert,animated:true, completion: nil)
        }
        
        
    }
    
    
    
    
    
    
    
}
