//
//  PCartaViewController.swift
//  SocratesApp
//
//  Created by Leonardo Guzmán Cruz on 7/15/20.
//  Copyright © 2020 DAMII. All rights reserved.
//

import UIKit

class PCartaViewController: UIViewController {
    
    var carta: [Desayuno] = []
    
    
    @IBOutlet weak var cartaTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        carta = createArray()
        
        cartaTableView.delegate = self
        cartaTableView.dataSource = self
    }
    func createArray() -> [Desayuno] {
    var temporal: [Desayuno] = []
    
        
        let fileImage1 = UIImage(named: "Imagen")
        let fileImage2 = UIImage(named: "Imagen")
        let fileImage3 = UIImage(named: "Imagen")
        let fileImage4 = UIImage(named: "Imagen")
        let fileImage5 = UIImage(named: "Imagen")
        let fileImage6 = UIImage(named: "Imagen")
        
    let pan01 = Desayuno(image: fileImage1!, name: "CABRITO", dias: "S/27.9")
    let pan02 = Desayuno(image: fileImage2!, name: "LOMOSALTADO", dias: "S/32.9")
    let pan03 = Desayuno(image: fileImage3!, name: "BISTE A LO POBRE", dias: "S/33.9")
    let pan04 = Desayuno(image: fileImage4!, name: "ARROZ CON PATO", dias: "S/29.9")
    let pan05 = Desayuno(image: fileImage5!, name: "CUY FRITO", dias: "S/35.9")
    let pan06 = Desayuno(image: fileImage6!, name: "CHICHARRON DE POLLO", dias: "S/28.9")
    
        
    temporal.append(pan01)
    temporal.append(pan02)
    temporal.append(pan03)
    temporal.append(pan04)
    temporal.append(pan05)
    temporal.append(pan06)
    
        
    return temporal
    }

}
extension PCartaViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carta.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cartaRow = carta[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CartaCell") as! CartaTableViewCell
        cell.setDesayuno(carta: cartaRow)
        
        return cell
    }
    
    
}
