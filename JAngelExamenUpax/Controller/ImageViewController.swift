//
//  ImageViewController.swift
//  JAngelExamenUpax
//
//  Created by MacBookMBA6 on 09/02/23.
//

import UIKit

class ImageViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    var consumoapiviewmodel =  ConsumoApiViewModel()
    @IBOutlet weak var imageSelfie: UIImageView!
    let imagepicker = UIImagePickerController()
    override func viewDidLoad() {
        super.viewDidLoad()
        imagepicker.delegate = self
        imagepicker.sourceType = .photoLibrary
        imagepicker.isEditing = false
        consumoapiviewmodel.getApi()

        // Do any additional setup after loading the view.
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            imageSelfie.image = info[.originalImage] as? UIImage
            
            dismiss(animated: true, completion: nil)
        }
    
    @IBAction func PohotAction(_ sender: Any) {
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
