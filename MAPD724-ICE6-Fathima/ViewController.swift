//
//  ViewController.swift
//  MAPD724-ICE6-Fathima
//
//  Created by Fathima Fathila on 2022-03-13.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addImage(_ sender: Any) {
        let ac = UIAlertController(title: "Select Image", message: "Select Image From?", preferredStyle: .actionSheet )
        let camera = UIAlertAction(title: "camera" , style: .default){[weak self] (_) in
            self?.showImagePicker(selectedSource: UIImagePickerController.SourceType.photoLibrary)
        }
        let library = UIAlertAction(title: "Library" , style: .default){(_) in
            print("Library SElected")
        }
        let cancel = UIAlertAction(title: "cancel" , style: .default, handler: nil)
        ac.addAction(camera)
        ac.addAction(library)
        ac.addAction(cancel)
        self.present(ac, animated: true, completion: nil)
        }
    func showImagePicker(selectedSource: UIImagePickerController.SourceType){
        guard UIImagePickerController.isSourceTypeAvailable(selectedSource)
        else{
        print("selcted source not available")
            return}
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.sourceType = selectedSource
        imagePickerController.allowsEditing = false
        self.present(imagePickerController, animated:  true,completion: nil)
    
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selected = info[.originalImage] as? UIImage{
            imageView.image = selected
    }
    else{
        print("image not found")
        }
    picker.dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}

