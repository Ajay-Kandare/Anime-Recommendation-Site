
//  ViewController3.swift
//  novo1
//
//  Created by Student on 15/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit





class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var user : String = ""
    var pass : String = ""
    var repass : String = ""

    

    @IBOutlet weak var usernameinp: UITextField!
    
    @IBOutlet weak var passwordinp: UITextField!
    
    
    
    @IBOutlet weak var reinp: UITextField!
    
    
    
    @IBAction func signupbtn(_ sender: Any) {
        
        user = usernameinp.text!
        pass = passwordinp.text!
        repass = reinp.text!
        
        var myvar = {
            
            (a: UIAlertAction) -> Void in
            self.usernameinp.text = ""
            self.passwordinp.text = ""
            self.reinp.text = ""
            self.performSegue(withIdentifier:  "sgotologin", sender:  nil)
            
        }
        
        if pass == repass
        {
            var alert = UIAlertController(title:  "congrats", message:  " you signup succesfully and move to login page", preferredStyle: UIAlertController.Style.alert)
            
            
          alert.addAction(UIAlertAction(title:  "ok", style: UIAlertAction.Style.default, handler:  myvar))
            
            present(alert,animated: false, completion: nil)
        }
        else
        {
            var alert = UIAlertController(title:  " warning!", message:  "passwords are not matched", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title:  "ok", style: UIAlertAction.Style.default, handler:  nil))
            present(alert,animated: false,completion: nil)
            
            
            
            
        }
        
     performSegue(withIdentifier: "sgotologin", sender: self)
    
    }
    
    
    @IBOutlet weak var agenumber: UITextField!
    
    @IBOutlet weak var btnAge: UISlider!
    @IBAction func btnage(_ sender: Any) {
        agenumber.text = String(Int(btnAge.value))
        
    }
    
    
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sgotogetstarted"{
            let dest = segue.destination as! ViewController4
        dest.caughtvalue = user
        }
        
       
            if segue.identifier == "sgotologin"{
                let dest = segue.destination as! ViewController2
                dest.caughtusername = user
            }
        
            
                if segue.identifier == "sgotologin"{
                    let dest = segue.destination as! ViewController2
                    dest.caughtpassword = pass
                }
        
        
    }
    
    
    
    
    
    
}
