//
//  GraficaTableViewController.swift
//  JAngelExamenUpax
//
//  Created by MacBookMBA6 on 15/02/23.
//

import UIKit

class GraficaTableViewController: UITableViewController {
     var consumoapiviewmodel = ConsumoApiViewModel()
    var Informacion = [preguntas]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "GraficaTableViewCell", bundle: nil), forCellReuseIdentifier: "graficacell")
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        LoadData()
    }
    func LoadData(){
        let result = consumoapiviewmodel.getApi { informacion in
            DispatchQueue.main.async {  
                self.Informacion = informacion.data as! [preguntas]
                self.tableView.reloadData()
            }
        }
        
    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Informacion.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "graficacell", for: indexPath as IndexPath) as! GraficaTableViewCell
        let posicion = indexPath.row
        if posicion == 0{
            cell.Preguntalbl.text = Informacion[indexPath.row].pregunta
            cell.sivalor = Informacion[indexPath.row].values[0].value
            cell.novalor = Informacion[indexPath.row].values[1].value
            //  cell.values = Informacion[indexPath.row].values
            cell.posicion = posicion
           }
        if posicion == 1{
            cell.Preguntalbl.text = Informacion[indexPath.row].pregunta
            cell.Elektravalor = Informacion[indexPath.row].values[0].value
            cell.BancoAztecavalor = Informacion[indexPath.row].values[1].value
            cell.Netovalor = Informacion[indexPath.row].values[2].value
            cell.Upaxvalor = Informacion[indexPath.row].values[3].value
            cell.Dragonvalor = Informacion[indexPath.row].values[4].value
            cell.Otrovalor = Informacion[indexPath.row].values[5].value
            cell.posicion = posicion
        }
        if posicion == 2{
            cell.Preguntalbl.text = Informacion[indexPath.row].pregunta
            cell.sivalor = Informacion[indexPath.row].values[0].value
            cell.novalor = Informacion[indexPath.row].values[1].value
            cell.talvezvalor = Informacion[indexPath.row].values[2].value
            cell.Upaxvalor = Informacion[indexPath.row].values[3].value
            cell.Dragonvalor = Informacion[indexPath.row].values[4].value
            cell.Otrovalor = Informacion[indexPath.row].values[5].value
            cell.posicion = posicion
            
        }
        if posicion == 3{
            cell.Preguntalbl.text = Informacion[indexPath.row].pregunta
            cell.Elektravalor = Informacion[indexPath.row].values[0].value
            cell.BancoAztecavalor = Informacion[indexPath.row].values[1].value
            cell.Netovalor = Informacion[indexPath.row].values[2].value
            cell.Upaxvalor = Informacion[indexPath.row].values[3].value
            cell.Dragonvalor = Informacion[indexPath.row].values[4].value
            cell.Italikavalor = Informacion[indexPath.row].values[5].value
            cell.posicion = posicion
        }
        return cell
        
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
