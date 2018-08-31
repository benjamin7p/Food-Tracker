//
//  ViewController.swift
//  Food Tracker
//
//  Created by Benjamin Poulsen PRO on 8/28/18.
//  Copyright © 2018 Benjamin Poulsen PRO. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate,UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //MARK: Properties
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var mealNameLabel: UILabel!
    
    @IBOutlet weak var photoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
// Handle the text field's user input through delegate callbacks.
        nameTextField.delegate = self
        

    }

    //MARK: Actions UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       //Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
        
    }
    //MARK: Actions
    
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        // Hide the keyboard.
        nameTextField.resignFirstResponder()
        // UIIMagePickerController is a view controller that lers a user pick media from their photo library.
        let imagePickerController = UIImagePickerController()
        
    }
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
        
        
        
    }
    


}

