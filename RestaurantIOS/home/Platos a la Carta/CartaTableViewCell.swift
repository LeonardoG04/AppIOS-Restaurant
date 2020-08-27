//
//  CartaTableViewCell.swift
//  SocratesApp
//
//  Created by Leonardo Guzmán Cruz on 7/15/20.
//  Copyright © 2020 DAMII. All rights reserved.
//

import UIKit

class CartaTableViewCell: UITableViewCell{

    @IBOutlet weak var imagelogo: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelDia: UILabel!
    
    func setDesayuno(carta: Desayuno) {
        imagelogo.image = carta.image
        labelName.text = carta.name
        labelDia.text = carta.dias
    }
}
