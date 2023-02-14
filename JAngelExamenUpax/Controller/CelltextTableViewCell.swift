//
//  CelltextTableViewCell.swift
//  JAngelExamenUpax
//
//  Created by MacBookMBA6 on 13/02/23.
//

import UIKit

class CelltextTableViewCell: UITableViewCell, UITextFieldDelegate {
    
    @IBOutlet weak var Textuitext: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        Textuitext.delegate = self
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == Textuitext {
            let allowedCharacters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzñ  "
            let allowedCharacterSet = CharacterSet(charactersIn: allowedCharacters)
            let typedCharacterSet = CharacterSet(charactersIn: string)
            let alphabet = allowedCharacterSet.isSuperset(of: typedCharacterSet)
            return alphabet
            
            
        } else {
            return false
        }
        
    }}
