//
//  ViewController.swift
//  SocratesApp
//
//  Created by DAMII on 6/7/20.
//  Copyright © 2020 DAMII. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    
    @IBOutlet weak var textCodigo: UITextField!
    @IBOutlet weak var textPass: UITextField!
    @IBOutlet weak var textName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    
    @IBAction func loginAction(_ sender: Any) {
    let code = textCodigo.text
        let password = textPass.text
        
        if code!.isEmpty && password!.isEmpty{
            print("Este campo es obligatorio")
        } else {
            
            UserDefaults.standard.set(true, forKey: "userLogin")
            UserDefaults.standard.set(code, forKey: "userCode")
            
            goMenu()
            
        }
    
    }
    
    func goMenu(){
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let pantallaMenu = storyBoard.instantiateViewController(identifier: "MenuView") as! MenuViewController
        
        pantallaMenu.modalPresentationStyle = .fullScreen
        pantallaMenu.modalTransitionStyle = .crossDissolve
        
        self.present(pantallaMenu, animated: true, completion: nil)
        
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
    
    
    
   
    @IBAction func iniciaAction(_ sender: Any) {
    
    let name = textName.text
        
        if name!.isEmpty{
            print("Ingresa un Nombre")
        } else{
            UserDefaults.standard.set(true, forKey: "useNombre")
            
            goIngresa()
        }
    }
    func goIngresa() {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let pantallaIngresa = storyBoard.instantiateViewController(identifier: "IngresaView") as! IngresaViewController
        
        pantallaIngresa.modalPresentationStyle = .fullScreen
        pantallaIngresa.modalTransitionStyle = .crossDissolve
        
        self.present(pantallaIngresa, animated: true, completion: nil)
        
    }

}

