//
//  ViewController.swift
//  PhotoGallery
//
//  Created by avishek on 28/10/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        login.layer.cornerRadius = 38
        reset.layer.cornerRadius = 40
        email.delegate = self
        password.delegate = self
    }

    @IBOutlet weak var login: UIButton!
    
    @IBOutlet weak var reset: UIButton!
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    @IBAction func loginAction(_ sender: Any) {
        
        if email.text == "admin" && password.text == "admin123"{
            performSegue(withIdentifier: "main", sender: nil)
        }
        else {
            let alrt = UIAlertController(title: "Wrong Password", message: "", preferredStyle: UIAlertController.Style.alert)
            alrt.addAction(UIAlertAction(title: "Try Again", style: UIAlertAction.Style.destructive, handler: nil))
            present(alrt, animated: true, completion: nil)
            
            email.text = ""
            password.text = ""
        }
    }
    
    
    @IBAction func clearAction(_ sender: Any) {
        email.text = ""
        password.text = ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}

