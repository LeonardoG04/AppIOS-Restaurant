//
//  PanViewController.swift
//  SocratesApp
//
//  Created by Leonardo Guzmán Cruz on 7/15/20.
//  Copyright © 2020 DAMII. All rights reserved.
//

import UIKit

class PanViewController: UIViewController {

    var panes: [Desayuno] = []
    
    @IBOutlet weak var panTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        panes = createArray()
        
        panTableView.delegate = self
        panTableView.dataSource = self
    }
    func createArray() -> [Desayuno] {
        var temporal: [Desayuno] = []
        
        let fileImage1 = UIImage(named: "Imagen")
        let fileImage2 = UIImage(named: "Imagen")
        let fileImage3 = UIImage(named: "Imagen")
        let fileImage4 = UIImage(named: "Imagen")
        let fileImage5 = UIImage(named: "Imagen")
        let fileImage6 = UIImage(named: "Imagen")
        
        let pan01 = Desayuno(image: fileImage1!, name: "SANDWICH DE MECHADO", dias: "S/10.9")
        let pan02 = Desayuno(image: fileImage2!, name: "SANDWICH DE CHICHARRÓN", dias: "S/13.9")
        let pan03 = Desayuno(image: fileImage3!, name: "SANDWICH DE PAVO CRIOLLO", dias: "S/11.9")
        let pan04 = Desayuno(image: fileImage4!, name: "SANDWICH DE JAMÓN SERRANO", dias: "S/10.9")
        let pan05 = Desayuno(image: fileImage5!, name: "SANDWICH DE POLLO", dias: "S/9.9")
        let pan06 = Desayuno(image: fileImage6!, name: "PORCION DE PAVO", dias: "S/11.9")
        
        temporal.append(pan01)
        temporal.append(pan02)
        temporal.append(pan03)
        temporal.append(pan04)
        temporal.append(pan05)
        temporal.append(pan06)
        return temporal
    }

}
extension PanViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return panes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let panRow = panes[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PanCell") as! PanTableViewCell
        cell.setDesayuno(pan: panRow)
        
        return cell
        
        
    }
    
    
}
