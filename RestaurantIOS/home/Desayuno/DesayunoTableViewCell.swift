//
//  ContactTableViewCell.swift
//  SocratesApp
//
//  Created by DAMII on 6/21/20.
//  Copyright © 2020 DAMII. All rights reserved.
//

import UIKit

class DesayunoTableViewCell: UITableViewCell {

    
    @IBOutlet weak var imagelogo: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelDias: UILabel!
    
    
    func setDesayuno(desayuno: Desayuno) {
        imagelogo.image = desayuno.image
        labelName.text = desayuno.name
        labelDias.text = desayuno.dias
    }
}
