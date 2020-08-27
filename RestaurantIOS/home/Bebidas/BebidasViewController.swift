//
//  BebidasTableViewCell.swift
//  SocratesApp
//
//  Created by Leonardo Guzmán Cruz on 7/15/20.
//  Copyright © 2020 DAMII. All rights reserved.
//

import UIKit

class BebidasViewController: UIViewController{

    var bebidas: [Desayuno] = []

    
    @IBOutlet weak var bebidaTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bebidas = createArray()
        
        bebidaTableView.delegate = self
        bebidaTableView.dataSource = self
    }
    
    func createArray() -> [Desayuno] {
    var temporal: [Desayuno] = []
    
    let fileImage1 = UIImage(named: "Imagen")
    let fileImage2 = UIImage(named: "Imagen")
    let fileImage3 = UIImage(named: "Imagen")
    let fileImage4 = UIImage(named: "Imagen")
    let fileImage5 = UIImage(named: "Imagen")
    let fileImage6 = UIImage(named: "Imagen")
    
    let pan01 = Desayuno(image: fileImage1!, name: "PICARONES", dias: "S/8.9")
    let pan02 = Desayuno(image: fileImage2!, name: "TORTA DE CHOCOLATE", dias: "S/8.9")
    let pan03 = Desayuno(image: fileImage3!, name: "LECHE ASADA", dias: "S/5.9")
    let pan04 = Desayuno(image: fileImage4!, name: "TRES LECHES", dias: "S/8.9")
    let pan05 = Desayuno(image: fileImage5!, name: "MAZAMORRA", dias: "S/5.9")
    let pan06 = Desayuno(image: fileImage6!, name: "ARROZ CON LECHE", dias: "S/5.9")
    
    temporal.append(pan01)
    temporal.append(pan02)
    temporal.append(pan03)
    temporal.append(pan04)
    temporal.append(pan05)
    temporal.append(pan06)
    
    return temporal
    }
    
}
extension BebidasViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bebidas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let bebidaRow = bebidas[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "BebidasCell") as! BebidasTableViewCell
        cell.setDesayuno(bebidas: bebidaRow)
        
        return cell
        
    }
    
    
}
