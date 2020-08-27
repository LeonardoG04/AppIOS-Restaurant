//
//  EntradasTableViewCell.swift
//  SocratesApp
//
//  Created by Leonardo Guzmán Cruz on 7/15/20.
//  Copyright © 2020 DAMII. All rights reserved.
//

import UIKit

class EntradasTableViewCell: UITableViewCell{
    
    @IBOutlet weak var imagelogo: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelDia: UILabel!
    
    func setDesayuno(entrada: Desayuno){
        imagelogo.image = entrada.image
        labelName.text = entrada.name
        labelName.text = entrada.dias
    }
}
