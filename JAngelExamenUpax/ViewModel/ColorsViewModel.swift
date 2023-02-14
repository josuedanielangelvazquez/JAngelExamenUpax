//
//  ColorsViewModel.swift
//  JAngelExamenUpax
//
//  Created by MacBookMBA6 on 14/02/23.
//
import Firebase
import Foundation
class ColorsViewModel {
    var letras = ["A","B","C","D","E","F"]
    var codigo : [String] = [""]
    var refDataBase : DatabaseReference!
    
    func Cambiacolors()->String{
        for numero in 1...3{
            codigo.append(letras.randomElement()!)
            codigo.append(String(Int.random(in: 1...9)))
        }
    
       let color = "#\(codigo.joined(separator: ""))" //Convertir array a string
        codigo = [""]
        savecolor(color: color)
        return color
    }
    func savecolor(color:String){
        refDataBase = Database.database().reference()
        self.refDataBase.child("Hexcolors") .child("color").childByAutoId().setValue(color)
    }
    func observer(Color : @escaping(String)->Void ){
        refDataBase = Database.database().reference()
        var color = ""
        self.refDataBase.child("Hexcolors").child("color").observe(.value) { snapshot in
            if let listsnap = snapshot.children.allObjects as? [DataSnapshot]{
                for snap in listsnap{
                    color = (snap.value as? String)!
                    Color(color)
                }
            }
        }
       
    }
}
