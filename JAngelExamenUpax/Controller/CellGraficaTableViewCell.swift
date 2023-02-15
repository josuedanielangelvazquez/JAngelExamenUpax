//
//  CellGraficaTableViewCell.swift
//  JAngelExamenUpax
//
//  Created by MacBookMBA6 on 13/02/23.
//

import UIKit

class CellGraficaTableViewCell: UITableViewCell {

    
    @IBOutlet weak var textinformation: UITextView!
    
    var prueba = 0
    override func awakeFromNib() {
        super.awakeFromNib()
        textinformation.text = "Una gráfica o representación gráfica es un tipo de representación de datos, generalmente numéricos, mediante recursos visuales (líneas, vectores, superficies o símbolos), para que se manifieste visualmente la relación matemática o correlación estadística que guardan entre sí. También es el nombre de un conjunto de puntos que se plasman en coordenadas cartesianas y sirven para analizar el comportamiento de un proceso o un conjunto de elementos o signos que permiten la interpretación de un fenómeno. La representación gráfica permite establecer valores que no se han obtenido experimentalmente sino mediante la interpolación (lectura entre puntos) y la extrapolación (valores fuera del intervalo experimental)"
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
