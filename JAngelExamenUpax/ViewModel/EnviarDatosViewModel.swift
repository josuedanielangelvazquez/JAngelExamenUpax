//
//  EnviarDatosViewModel.swift
//  JAngelExamenUpax
//
//  Created by MacBookMBA6 on 14/02/23.
//

import Foundation
import Firebase
import FirebaseFirestore
class EnviarDatosViewModel{
    let db = Firestore.firestore()
    
    func EnviarData(var user: String, var imagedata: String){
        do{
         try   db.collection("Users").document().setData(["user":user, "image":imagedata])
        }
        catch let error{
            print("Error al enviar los daots \(error.localizedDescription)")
        }
        
    }
}
