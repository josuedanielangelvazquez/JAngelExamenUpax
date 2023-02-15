//
//  ConsumoApiViewModel.swift
//  JAngelExamenUpax
//
//  Created by MacBookMBA6 on 09/02/23.
//

import Foundation
class ConsumoApiViewModel{
    func getApi(datos : @escaping(dataApi)->Void){
        let urlsession = URLSession.shared
        let url = URL(string: "https://s3.amazonaws.com/dev.reports.files/test.json")
        urlsession.dataTask(with: url!){ data, response, error in
            if let safeData = data{
                let json = self.parseJSON(data: safeData)
                datos(json!)
            }
            else{
                print(error?.localizedDescription)
                
            }
        }.resume()
    }
    func parseJSON(data: Data)-> dataApi?{
        let decodable = JSONDecoder()
        do{
            let request = try decodable.decode(dataApi.self, from: data)
            let dataapi = dataApi(data: request.data)
            print("datos de api")
            print(dataapi)
            return dataapi
          
        }
        catch let error{
            print("Error en el decoder\(error.localizedDescription)")
            return nil
        }
    }
    
}

