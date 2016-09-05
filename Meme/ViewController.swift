//
//  ViewController.swift
//  Meme
//
//  Created by Jeremy Klein on 9/4/16.
//  Copyright © 2016 Jeremy Klein. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imagePickerView: UIImageView!
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //set image picker delegate
        imagePicker.delegate = self
    }
    

    @IBAction func pickAnImage(sender: AnyObject){
        self.presentViewController(imagePicker, animated: true, completion: nil)
    }
    //Implemented when Image is selected
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        // Check if image is selected
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage{
            //set image
            imagePickerView.image = pickedImage
            //Scale image view
            imagePickerView.contentMode = .ScaleAspectFit
        }
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    //Used by Cancel button on UIImagePickerController
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    

}

