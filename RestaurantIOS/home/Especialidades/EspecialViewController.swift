//
//  EspecialViewController.swift
//  SocratesApp
//
//  Created by Leonardo Guzmán Cruz on 7/15/20.
//  Copyright © 2020 DAMII. All rights reserved.
//

import UIKit

class EspecialViewController: UIViewController {
    
    var especial:[Desayuno] = []
    
    
    @IBOutlet weak var especialTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        especial = createArray2()
        
        especialTableView.delegate = self
        especialTableView.dataSource = self
    }
        
    func createArray2() -> [Desayuno] {
        var temporal: [Desayuno] = []
        
        let fileImage1 = UIImage(named: "gallina")
        let fileImage2 = UIImage(named: "carnero")
        let fileImage3 = UIImage(named: "sancochado")
        let fileImage4 = UIImage(named: "patasca")
        let fileImage5 = UIImage(named: "menestron")
        let fileImage6 = UIImage(named: "shambar")
        
        let desayuno01 = Desayuno(image: fileImage1!, name: "CALDO DE GALLINA", dias: "S/19.9")
        let desayuno02 = Desayuno(image: fileImage2!, name: "CARNERO", dias: "S/20.9")
        let desayuno03 = Desayuno(image: fileImage3!, name: "SANCOCHADO", dias: "S/20.9")
        let desayuno04 = Desayuno(image: fileImage4!, name: "PATASCA", dias: "S/20.9")
        let desayuno05 = Desayuno(image: fileImage5!, name: "MENESTRON", dias: "S/20.9")
        let desayuno06 = Desayuno(image: fileImage6!, name: "SHAMBAR", dias: "S/20.9")
        
        temporal.append(desayuno01)
        temporal.append(desayuno02)
        temporal.append(desayuno03)
        temporal.append(desayuno04)
        temporal.append(desayuno05)
        temporal.append(desayuno06)
        return temporal
    }

}
extension EspecialViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return especial.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let especialRow = especial[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "EspecialesCell") as! CaldosTableViewCell
        cell.setDesayuno(caldo: especialRow)
        
        return cell
        
    }
    
    
}
