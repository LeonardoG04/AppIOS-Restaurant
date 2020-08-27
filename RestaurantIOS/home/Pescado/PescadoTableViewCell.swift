//
//  PescadoTableViewCell.swift
//  SocratesApp
//
//  Created by Leonardo Guzmán Cruz on 7/15/20.
//  Copyright © 2020 DAMII. All rights reserved.
//

import UIKit

class PescadoTableViewCell: UITableViewCell{

    @IBOutlet weak var imagelogo: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelDias: UILabel!
    
    func setDesayuno(marisco: Desayuno){
        imagelogo.image = marisco.image
        labelName.text = marisco.name
        labelDias.text = marisco.dias
    }
}
