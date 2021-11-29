//
//  SesionViewController.swift
//  login
//
//  Created by Mac3 on 20/10/21.
//

import UIKit

class SesionViewController: UIViewController {

    @IBOutlet weak var lblUsuario: UILabel!
    
    @IBOutlet weak var lblPassword: UILabel!
    
    var recibirUsuario: String?
    var recibirPassword: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if recibirUsuario == "" && recibirPassword == ""{
           lblUsuario.text = "no hay datos"
            lblPassword.text = "no hay datos"
        }else{
            lblUsuario.text = recibirUsuario
            lblPassword.text = recibirPassword
        }
    }
    

  

}
