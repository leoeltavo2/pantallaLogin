//
//  ViewController.swift
//  login
//
//  Created by Mac3 on 20/10/21.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var tfUsuario: UITextField!
    @IBOutlet weak var tfContraseña: UITextField!
    
    @IBOutlet weak var btnRedesSociales: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func obtenerNameBtn(_ sender: UIButton) {
        print(sender.titleLabel?.text ?? "")
    }
    
    @IBAction func btnSignIn(_ sender: UIButton) {
        performSegue(withIdentifier: "segueEnviarDatos", sender: nil)
        tfUsuario.text = ""
        tfContraseña.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueEnviarDatos"{
            let destino = segue.destination as! SesionViewController
            destino.recibirUsuario = tfUsuario.text
            destino.recibirPassword = tfContraseña.text

        }
    }
    

}

