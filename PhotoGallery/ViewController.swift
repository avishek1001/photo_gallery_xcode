//
//  ViewController.swift
//  PhotoGallery
//
//  Created by avishek on 28/10/23.
//

import UIKit

class ViewController: UIViewController{
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        login.layer.cornerRadius = 20
    }

    @IBOutlet weak var login: UIButton!
    
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    @IBAction func loginAction(_ sender: Any) {
        
        if email.text == "admin" && password.text == "admin123"{
            performSegue(withIdentifier: "main", sender: nil)
        }
    }
}

