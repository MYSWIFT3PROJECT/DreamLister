//
//  MaterialVC.swift
//  DreamLister
//
//  Created by Nem Sothea on 8/1/17.
//  Copyright © 2017 Nem Sothea. All rights reserved.
//

import UIKit
private var materailkey = false
private var materailTkey = false
extension UIView {
    
    @IBInspectable var materailDesign:Bool {
        get{
           return materailkey
        }
        set {
            materailkey = newValue
            if materailkey {
                self.layer.masksToBounds = false
                self.layer.cornerRadius  = 5.0
                self.layer.shadowRadius  = 5.0
                self.layer.shadowOpacity = 0.8
                self.layer.shadowOffset  = CGSize(width: 0.0, height: 2.0)
                self.layer.shadowColor   = UIColor(red: 157/255, green: 157/255, blue: 157/255, alpha: 1.0).cgColor
                
                
            }else {
                self.layer.cornerRadius  = 0
                self.layer.shadowRadius  = 0
                self.layer.shadowOpacity = 0
                
            }
        }
    }
}
extension UITextField {
    @IBInspectable var materialTDesign: Bool {
        get {
            return materailTkey
        }
        set{
            let textField = UITextField(frame: frame)
            textField.translatesAutoresizingMaskIntoConstraints = false
            textField.layer.cornerRadius = 50
            textField.layer.borderColor = UIColor(red: 24/255, green: 24/255, blue: 24/255, alpha: 1.0).cgColor
            textField.layer.borderWidth = 10.0
            textField.layer.masksToBounds = true
            textField.layer.backgroundColor = UIColor(red: 157/255, green: 157/255, blue: 157/255, alpha: 1.0).cgColor
        }
    }
}
