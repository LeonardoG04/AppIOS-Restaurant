//
//  UsuarioViewController.swift
//  SocratesApp
//
//  Created by Leonardo Guzmán Cruz on 7/15/20.
//  Copyright © 2020 DAMII. All rights reserved.
//

import UIKit

class UsuarioViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func exitCloseSession(_ sender: Any) {
    
    let alert = UIAlertController(title: "¿Desea cerrar sesión?", message: "Tus datos se eliminaran", preferredStyle: .alert)
    
    alert.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: {action in
        //Eliminar valores del Usuario
        self.gotToLogin2()
        //Ir a Loging
        
    }))
            alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
        
        self.present(alert, animated: true)
    }
    
    
    func gotToLogin2() {
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let inicioViewController = storyboard.instantiateViewController(withIdentifier: "Inicio") as! ViewController
        inicioViewController.modalPresentationStyle = .fullScreen
        
        self.present(inicioViewController, animated: true, completion: nil)
    }
}
