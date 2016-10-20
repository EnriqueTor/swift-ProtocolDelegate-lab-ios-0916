//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    
    var textLeft = ""
    var textRight = ""
    var emojiDelegate: EmojiCreation?
    
    @IBOutlet weak var textFieldLeft: UITextField!
    @IBOutlet weak var textFieldRight: UITextField!
    @IBAction func saveButton(_ sender: UIButton) {
        textLeft = textFieldLeft.text!
        textRight = textFieldRight.text!
        
        emojiDelegate?.create(emojiGroup: (textLeft, textRight))
        
        dismiss(animated: true, completion: nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
        
    }
    
    
}
