//
//  HomeViewController.swift
//  SocratesApp
//
//  Created by DAMII on 6/7/20.
//  Copyright © 2020 DAMII. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var desayuno: [Desayuno] = []
    
    
    @IBOutlet weak var DesayunoTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        desayuno = createArray()
        
        
        DesayunoTableView.delegate = self
        DesayunoTableView.dataSource = self
        
        
    }
    
         
        func createArray() -> [Desayuno] {
                
                var temporal: [Desayuno] = []
                
                let fileImage1 = UIImage(named: "Imagen")
                let fileImage2 = UIImage(named: "Imagen")
                let fileImage3 = UIImage(named: "Imagen")
                let fileImage4 = UIImage(named: "Imagen")
                let fileImage5 = UIImage(named: "Imagen")
                let fileImage6 = UIImage(named: "Imagen")
                
                let desayuno01 = Desayuno(image: fileImage1!, name: "DESAYUNO VALLEJIANO", dias: "S/21.9")
                let desayuno02 = Desayuno(image: fileImage2!, name: "CHICHARRON", dias: "S/20.9")
                let desayuno03 = Desayuno(image: fileImage3!, name: "FRITO CON YUCA", dias: "S/20.9")
                let desayuno04 = Desayuno(image: fileImage4!, name: "TAMALES", dias: "S/3.9")
                let desayuno05 = Desayuno(image: fileImage5!, name: "HUMITAS", dias: "S/4.9")
                let desayuno06 = Desayuno(image: fileImage6!, name: "PAPA RELLENA", dias: "S/5.9")
                
                temporal.append(desayuno01)
                temporal.append(desayuno02)
                temporal.append(desayuno03)
                temporal.append(desayuno04)
                temporal.append(desayuno05)
                temporal.append(desayuno06)
                return temporal
            }
    }
extension HomeViewController: UITableViewDataSource, UITableViewDelegate{

func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return desayuno.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let desayunoRow = desayuno[indexPath.row]
    
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "DesayunoCell") as! DesayunoTableViewCell
    cell.setDesayuno(desayuno: desayunoRow)
    
    return cell
    
}
    
}

