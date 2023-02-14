//
//  TableViewController.swift
//  JAngelExamenUpax
//
//  Created by MacBookMBA6 on 10/02/23.
//

import UIKit
import Firebase
import FirebaseFirestore

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource,  UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    let imagepicker = UIImagePickerController()
    @IBOutlet weak var TableView: UITableView!
    @IBOutlet weak var perfilimage2: UIImageView!
    var user = ""
    var enviardatosviewmodel = EnviarDatosViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        perfilimage2.isHidden = true
        imagepicker.delegate = self
        imagepicker.sourceType = .photoLibrary
        imagepicker.isEditing = false
        TableView.delegate = self
        TableView.dataSource = self
        view.addSubview(TableView)
       self.TableView.register(UINib(nibName: "CellTableViewCell", bundle: .main), forCellReuseIdentifier: "celltable")
        self.TableView.register(UINib(nibName: "CelltextTableViewCell", bundle: .main), forCellReuseIdentifier: "celltext")
        self.TableView.register(UINib(nibName: "CellGraficaTableViewCell", bundle: .main), forCellReuseIdentifier: "GraficaCell")
                
        // Do any additional setup after loading the view.
    }
  

    @IBAction func enviaraction(_ sender: UIButton) {
        view.endEditing(true)
        let image = perfilimage2.image!
            let imagenstring : String
          
                let imagedata = image.pngData()! as NSData
                imagenstring = imagedata.base64EncodedString(options: .lineLength64Characters)
        enviardatosviewmodel.EnviarData(var: user, var: imagenstring)
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = TableView.dequeueReusableCell(withIdentifier: "celltext", for: indexPath as IndexPath) as! CelltextTableViewCell
            user = cell.Textuitext.text!
            return cell
        }
        if indexPath.row == 1{
            let cell = TableView.dequeueReusableCell(withIdentifier: "celltable", for: indexPath as IndexPath) as! CellTableViewCell
            cell.posicion = indexPath.row
            cell.perfilbutton.addTarget(self, action: #selector(addImage), for: .touchUpInside)
            cell.perfilbutton.tag = indexPath.row
            cell.perfilimage.image = perfilimage2.image
            
            return cell}
     
        else{
            let cell = TableView.dequeueReusableCell(withIdentifier: "GraficaCell", for: indexPath as IndexPath)
            return cell
        }
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
                perfilimage2.image = info[.originalImage] as? UIImage
                TableView.reloadData()
                
                        dismiss(animated: true, completion: nil)

                    }
    
    @objc func addImage(_sender:UIButton){
        self.present(imagepicker, animated: true)
       

    }
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
