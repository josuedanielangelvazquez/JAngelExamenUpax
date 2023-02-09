//
//  data.swift
//  JAngelExamenUpax
//
//  Created by MacBookMBA6 on 09/02/23.
//

import Foundation
struct dataApi: Codable{
    let data : [preguntas]
}
struct preguntas: Codable{
    let pregunta : String
    let values: [valuess]
}
struct valuess: Codable{
    let label: String
    let value: Int
}
