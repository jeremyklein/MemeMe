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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pickAnImage(sender: AnyObject){
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        self.presentViewController(imagePicker, animated: true, completion: nil)
    }

}

