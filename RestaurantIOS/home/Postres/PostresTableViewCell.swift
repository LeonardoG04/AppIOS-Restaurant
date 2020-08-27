//
//  PostresTableViewCell.swift
//  SocratesApp
//
//  Created by Leonardo Guzmán Cruz on 7/15/20.
//  Copyright © 2020 DAMII. All rights reserved.
//

import UIKit

class PostresViewCell: UITableViewCell {

    @IBOutlet weak var imagelogo: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelDias: UILabel!
    
    func setDesayuno(postre: Desayuno) {
        imagelogo.image = postre.image
        labelName.text = postre.name
        labelDias.text = postre.dias
    }
    
}
