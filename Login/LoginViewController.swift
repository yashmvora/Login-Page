//
//  LoginViewController.swift
//  Login
//
//  Created by yash on 04/06/19.
//  Copyright © 2019 yash. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, DataSendingProtocol {
    
    @IBOutlet weak var firstnamelabel: UILabel!
    @IBOutlet weak var lastnamelabel: UILabel!
    @IBOutlet weak var doblabel: UILabel!
    @IBOutlet weak var emaillabel: UILabel!
    @IBOutlet weak var phonelabel: UILabel!
    
    var firstnamedata: String!
    var lastnamedata: String!
    var dobdata: String!
    var emaildata: String!
    var phonedata: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        firstnamelabel.text = "Your first name is: " + firstnamedata
        lastnamelabel.text = "Your last name is: " + lastnamedata
        doblabel.text = "Your Date of Birth is: " + dobdata
        emaillabel.text = "Your Email ID is: " + emaildata
        phonelabel.text = "Your Phone Number is: " + phonedata
        
    }
    
    func sendData(myData: String) {
        self.firstnamelabel.text = myData
    }

}
