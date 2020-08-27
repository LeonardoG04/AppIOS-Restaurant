//
//  PanTableViewCell.swift
//  SocratesApp
//
//  Created by Leonardo Guzmán Cruz on 7/15/20.
//  Copyright © 2020 DAMII. All rights reserved.
//

import UIKit

class PanTableViewCell: UITableViewCell {

    @IBOutlet weak var imagelogo: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelDias: UILabel!
    
    func setDesayuno(pan: Desayuno) {
        imagelogo.image = pan.image
        labelName.text = pan.name
        labelDias.text = pan.dias
    }
}
