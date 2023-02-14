//
//  ColorsViewController.swift
//  JAngelExamenUpax
//
//  Created by MacBookMBA6 on 14/02/23.
//

import UIKit
import Hex
import Firebase
class ColorsViewController: UIViewController {
    var colorsviewmodel = ColorsViewModel()
   var color = ""

    @IBOutlet var backgroundview: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colorsviewmodel.observer { Color2 in
            DispatchQueue.main.async {
                self.backgroundview.backgroundColor = UIColor(hex: Color2)

            }

        }

    }
    
    
    
    
    @IBAction func ButtonActionColor(_ sender: Any) {
       var color = colorsviewmodel.Cambiacolors()
        backgroundview.backgroundColor = UIColor(hex: color)
      

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
