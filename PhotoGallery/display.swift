//
//  display.swift
//  PhotoGallery
//
//  Created by avishek on 01/11/23.
//

import UIKit

class display: UIViewController {

    @IBOutlet weak var img: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        img.image = UIImage(named: cam[myIndex])

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func prevAction(_ sender: Any) {
        
        if myIndex > 0 {
            img.image = UIImage(named: cam[myIndex - 1])
        }
    }
    
    @IBAction func nextAction(_ sender: Any) {
        img.image = UIImage(named: cam[myIndex + 1])
    }
    
    
    
}
