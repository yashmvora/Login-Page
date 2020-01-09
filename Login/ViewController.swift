//
//  ViewController.swift
//  Login
//
//  Created by yash on 04/06/19.
//  Copyright © 2019 yash. All rights reserved.
//

import UIKit

protocol DataSendingProtocol {
    func sendData(myData: String)
}

class ViewController: UIViewController {
    
    var delegate: DataSendingProtocol? = nil
    
    @IBOutlet weak var firstnametext: UITextField!
    @IBOutlet weak var lastnametext: UITextField!
    @IBOutlet weak var dobtext: UITextField!
    @IBOutlet weak var emailtext: UITextField!
    @IBOutlet weak var phonetext: UITextField!
    @IBOutlet weak var SubmitButtonOutlet: UIButton!
    
    @IBOutlet weak var ValidatorLabel: UILabel!
    
    var display: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()           
    
    }
    
    func Validation() -> Bool{
        
        display = ""
        
        if firstnametext.text!.isEmpty {
            display = "Please enter the First Name. "
        }else{
            
        }
        if lastnametext.text!.isEmpty{
            display = display + "Please enter the Last Name. "
        }
        if dobtext.text!.isEmpty{
            display = display + "Please enter the DOB. "
        }
        if emailtext.text!.isEmpty{
            display = display + "Please enter the Email. "
        }else{
            
            if !emailtext.text!.contains("@") || !emailtext.text!.contains(".") || emailtext.text!.contains(" "){
                display = display + "Please enter a valid email. "
            }
        }
        
        if phonetext.text!.isEmpty{
            display = display + "Please enter the Phone Number."
        }
        
        ValidatorLabel.text = display
        if display == ""{
            return true
        }else{
            return false
        }
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        
//        if let loginVC = segue.destination as! LoginViewController {
//            loginVC.delegate = self
//            //            loginVC.firstnamedata = firstnametext.text
//            //            loginVC.lastnamedata = lastnametext.text
//            //            loginVC.dobdata = dobtext.text
//            //            loginVC.emaildata = emailtext.text
//            //            loginVC.phonedata = phonetext.text
//        }
//    }
//    
   
    @IBAction func SubmitButton(_ sender: UIButton) {
        
        if Validation() == true {
            
            let firstnamedata = self.firstnametext.text
            self.delegate?.sendData(myData: firstnamedata!)
            let lastnamedata = self.lastnametext.text
            self.delegate?.sendData(myData: lastnamedata!)
            let dobdata = self.dobtext.text
            self.delegate?.sendData(myData: dobdata!)
            let emaildata = self.emailtext.text
            self.delegate?.sendData(myData: emaildata!)
            let phonedata = self.phonetext.text
            self.delegate?.sendData(myData: phonedata!)
            
            dismiss(animated: true, completion: nil)
            
        }
    
    }
    
}

