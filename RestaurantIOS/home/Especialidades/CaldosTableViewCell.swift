//
//  CaldosTableViewCell.swift
//  SocratesApp
//
//  Created by Leonardo Guzmán Cruz on 7/15/20.
//  Copyright © 2020 DAMII. All rights reserved.
//

import UIKit

class CaldosTableViewCell: UITableViewCell {

    @IBOutlet weak var imagelogo: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelDias: UILabel!
    
    func setDesayuno(caldo: Desayuno) {
        imagelogo.image = caldo.image
        labelName.text = caldo.name
        labelDias.text = caldo.dias
    }
    
}
