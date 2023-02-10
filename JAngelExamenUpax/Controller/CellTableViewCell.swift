//
//  CellTableViewCell.swift
//  JAngelExamenUpax
//
//  Created by MacBookMBA6 on 10/02/23.
//

import UIKit

class CellTableViewCell: UITableViewCell {

    var posicion = 0 
    @IBOutlet weak var perfilimage: UIImageView!
    @IBOutlet weak var nombretext: UITextField!
    
    @IBOutlet weak var perfilbutton: UIButton!
    let imagepicker = UIImagePickerController()
    override func awakeFromNib() {
        super.awakeFromNib()

        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if posicion == 0{
            nombretext.isHidden = true
        }
        if posicion == 1{
            perfilimage.isHidden = true
            
                perfilbutton.isHidden = true
        }
        if posicion == 2{
            nombretext.isHidden = true
            perfilimage.isHidden = true
            perfilbutton.isHidden = true
        }
        if posicion == 3{
            nombretext.isHidden = false
            perfilimage.isHidden = false
            perfilbutton.isHidden = true
        }
    }

   
    
}
