//
//  PEntradaViewController.swift
//  SocratesApp
//
//  Created by Leonardo Guzmán Cruz on 7/15/20.
//  Copyright © 2020 DAMII. All rights reserved.
//

import UIKit

class PEntradaViewController: UIViewController {

    var entrada: [Desayuno] = []
    
    
    @IBOutlet weak var entradaTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        entrada = createArray()
        
        entradaTableView.delegate = self
        entradaTableView.dataSource = self
    }
    
    func createArray() -> [Desayuno] {
    var temporal: [Desayuno] = []
    
        
        let fileImage1 = UIImage(named: "Imagen")
        let fileImage2 = UIImage(named: "Imagen")
        let fileImage3 = UIImage(named: "Imagen")
        let fileImage4 = UIImage(named: "Imagen")
        let fileImage5 = UIImage(named: "Imagen")
        let fileImage6 = UIImage(named: "Imagen")
        
    let pan01 = Desayuno(image: fileImage1!, name: "AJI DE GALLINA", dias: "S/18.9")
    let pan02 = Desayuno(image: fileImage2!, name: "SANGRESITA", dias: "S/16.9")
    let pan03 = Desayuno(image: fileImage3!, name: "PAPA A LA HUANCAINA", dias: "S/15.9")
    let pan04 = Desayuno(image: fileImage4!, name: "PATITA EN FIAMBRE", dias: "S/18.9")
    let pan05 = Desayuno(image: fileImage5!, name: "TAMALES", dias: "S/4.9")
    let pan06 = Desayuno(image: fileImage6!, name: "PAPA RELLENA", dias: "S/5.9")
    
        
    temporal.append(pan01)
    temporal.append(pan02)
    temporal.append(pan03)
    temporal.append(pan04)
    temporal.append(pan05)
    temporal.append(pan06)
    
        
    return temporal
    }
    
}
extension PEntradaViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return entrada.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let entradaRow = entrada[indexPath.row]
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "EntradasCell") as! EntradasTableViewCell
        cell.setDesayuno(entrada: entradaRow)
        
        return cell
    }
    
    
}
