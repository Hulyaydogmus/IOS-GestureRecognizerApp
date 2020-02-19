//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Mojave on 19.02.2020.
//  Copyright © 2020 Hulya Aydogmus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    var isEiffell = true
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        //gestureRecognizer kullanıcının yaptığı hareketleri yönlendiren metodlardır. UITapGestureRecognizer--> kullanıcı uygulamada herhangi bir objeye dokunduğunda  resim gibi.
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureRecognizer)//
    }

    @objc func changePic(){
        
           if isEiffell == true{
           imageView.image = UIImage(named: "londonbridge")
           myLabel.text = "London Bridge"
           isEiffell = false
        
         } else {
        
           imageView.image = UIImage(named: "eiffell")
           myLabel.text = "Eiffell"
           isEiffell = true
    
        }
    }
    
}

