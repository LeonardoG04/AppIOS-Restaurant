//
//  BebidasTableViewCell.swift
//  SocratesApp
//
//  Created by Leonardo Guzmán Cruz on 7/15/20.
//  Copyright © 2020 DAMII. All rights reserved.
//

import UIKit

class BebidasTableViewCell: UITableViewCell {

    @IBOutlet weak var imagelogo: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelDias: UILabel!
    
    func setDesayuno(bebidas: Desayuno){
        imagelogo.image = bebidas.image
        labelName.text = bebidas.name
        labelDias.text = bebidas.dias
    }
}

