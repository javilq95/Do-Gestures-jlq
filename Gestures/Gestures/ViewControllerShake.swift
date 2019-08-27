//
//  ViewControllerShake.swift
//  Gestures
//
//  Created by Macosx on 7/6/19.
//  Copyright © 2019 UJA. All rights reserved.
//

import UIKit
class ViewControllerShake: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            performSegue(withIdentifier: "segue2", sender: self)
        }
    }
    
}
