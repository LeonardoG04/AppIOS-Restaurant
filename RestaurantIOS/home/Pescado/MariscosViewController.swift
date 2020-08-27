//
//  PescadoViewController.swift
//  SocratesApp
//
//  Created by Leonardo Guzmán Cruz on 7/15/20.
//  Copyright © 2020 DAMII. All rights reserved.
//

import UIKit

class MariscosViewController: UIViewController {

    var pescado: [Desayuno] = []
    
    
    @IBOutlet weak var pescadoTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pescado = createArray()
        

        pescadoTableView.delegate = self
        pescadoTableView.dataSource = self
    }
    
    func createArray() -> [Desayuno] {
    var temporal: [Desayuno] = []
    
    let fileImage1 = UIImage(named: "Imagen")
    let fileImage2 = UIImage(named: "Imagen")
    let fileImage3 = UIImage(named: "Imagen")
    let fileImage4 = UIImage(named: "Imagen")
    let fileImage5 = UIImage(named: "Imagen")
    let fileImage6 = UIImage(named: "Imagen")
    let fileImage7 = UIImage(named: "Imagen")
    let fileImage8 = UIImage(named: "Imagen")
    let fileImage9 = UIImage(named: "Imagen")
    let fileImage10 = UIImage(named: "Imagen")
    let fileImage11 = UIImage(named: "Imagen")
    let fileImage12 = UIImage(named: "Imagen")
    let fileImage13 = UIImage(named: "Imagen")
    let fileImage14 = UIImage(named: "Imagen")
    let fileImage15 = UIImage(named: "Imagen")
    let fileImage16 = UIImage(named: "Imagen")
    let fileImage17 = UIImage(named: "Imagen")
    let fileImage18 = UIImage(named: "Imagen")
    let fileImage19 = UIImage(named: "Imagen")
    let fileImage20 = UIImage(named: "Imagen")
    let fileImage21 = UIImage(named: "Imagen")
    let fileImage22 = UIImage(named: "Imagen")
    let fileImage23 = UIImage(named: "Imagen")
        
    let pan01 = Desayuno(image: fileImage1!, name: "CEVICHE DE PESCADO", dias: "S/33.9")
    let pan02 = Desayuno(image: fileImage2!, name: "CEVICHE MIXTO", dias: "S/34.9")
    let pan03 = Desayuno(image: fileImage3!, name: "CEVICHE DE LENGUADO", dias: "S/31.9")
    let pan04 = Desayuno(image: fileImage4!, name: "CHICHARRON DE PESCADO", dias: "S/23.9")
    let pan05 = Desayuno(image: fileImage5!, name: "CHICHARRON DE LANGOSTINO", dias: "S/23.9")
    let pan06 = Desayuno(image: fileImage6!, name: "SUDADO DE PESCADO", dias: "S/33.9")
    let pan07 = Desayuno(image: fileImage7!, name: "CEVICHE VALLEJIANO", dias: "S/54.9")
    let pan08 = Desayuno(image: fileImage8!, name: "ARROZ CON MARISCO", dias: "S/23.9")
    let pan09 = Desayuno(image: fileImage9!, name: "PESCADO A LO MACHO", dias: "S/11.9")
    let pan10 = Desayuno(image: fileImage10!, name: "PARIHUELA", dias: "S/31.9")
    let pan11 = Desayuno(image: fileImage11!, name: "CHICHARRO MIXTO", dias: "S/34.9")
    let pan12 = Desayuno(image: fileImage12!, name: "CANGREJO REVENTADO", dias: "S/33.9")
    let pan13 = Desayuno(image: fileImage13!, name: "CHAUFA DE MARISCOS", dias: "S/23.9")
    let pan14 = Desayuno(image: fileImage14!, name: "TACU TACU", dias: "S/31.9")
    let pan15 = Desayuno(image: fileImage15!, name: "APANADO DE PESCADO", dias: "S/31.9")
    let pan16 = Desayuno(image: fileImage16!, name: "PESCADO FRITO", dias: "S/31.9")
    let pan17 = Desayuno(image: fileImage17!, name: "PESCADO A LA PLANCHA", dias: "S/31.9")
    let pan18 = Desayuno(image: fileImage18!, name: "PICANTE DE MARISCO", dias: "S/23.9")
    let pan19 = Desayuno(image: fileImage19!, name: "CHILCANO DE PESCADO", dias: "S/22.9")
    let pan20 = Desayuno(image: fileImage20!, name: "TIRADITO DE PESCADO", dias: "S/31.9")
    let pan21 = Desayuno(image: fileImage21!, name: "PESCADO A LA CHORRILLANA", dias: "S/34.9")
    let pan22 = Desayuno(image: fileImage22!, name: "JALEA", dias: "S/34.9")
    let pan23 = Desayuno(image: fileImage23!, name: "PIQUEO VALLEJIANO", dias: "S/56.9")
        
    temporal.append(pan01)
    temporal.append(pan02)
    temporal.append(pan03)
    temporal.append(pan04)
    temporal.append(pan05)
    temporal.append(pan06)
    temporal.append(pan07)
    temporal.append(pan08)
    temporal.append(pan09)
    temporal.append(pan10)
    temporal.append(pan11)
    temporal.append(pan12)
    temporal.append(pan13)
    temporal.append(pan14)
    temporal.append(pan15)
    temporal.append(pan16)
    temporal.append(pan17)
    temporal.append(pan18)
    temporal.append(pan19)
    temporal.append(pan20)
    temporal.append(pan21)
    temporal.append(pan22)
    temporal.append(pan23)
        
    return temporal
    }

}
extension MariscosViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pescado.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let pesRow = pescado[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PescadoCell") as! PescadoTableViewCell
        cell.setDesayuno(marisco: pesRow)
        
        return cell
        
    }
    
    
}
