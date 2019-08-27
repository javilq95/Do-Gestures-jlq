//
//  PressController.swift
//  Gestures
//
//  Created by Macosx on 17/6/19.
//  Copyright © 2019 UJA. All rights reserved.
//

import UIKit
class PressController: UIViewController {
    
    var usedPress: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func press(recognizer: UILongPressGestureRecognizer) {
        if usedPress == false{
            performSegue(withIdentifier: "segue1", sender: self)
            usedPress = true
        }
    }

    
}
