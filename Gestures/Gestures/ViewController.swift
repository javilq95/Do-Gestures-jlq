//
//  ViewController.swift
//  Gestures
//
//  Created by Macosx on 31/5/19.
//  Copyright © 2019 UJA. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var texto: UILabel!
    @IBOutlet weak var destino: UIImageView!
    var usedPinch: Bool = false
    var usedRotate: Bool = false
    var usedDrag: Bool = false
    @IBOutlet weak var campo: UITextField!
    
    @IBAction func confirmarPress(_ sender: Any) {
        if campo.text == "Do gestures"{
            performSegue(withIdentifier: "segue7", sender: self)
        }
    }
    @IBAction func drag(recognizer: UIPanGestureRecognizer) {
        let translation = recognizer.translation(in: self.view)
        if let view = recognizer.view {
            view.center = CGPoint(x:view.center.x + translation.x,
                                  y:view.center.y + translation.y)
            if view.center.x > (destino.center.x - 2) && view.center.x < (destino.center.x + 2)
            && view.center.y > (destino.center.y - 2) && view.center.y < (destino.center.y + 2){
                if usedDrag == false{
                    performSegue(withIdentifier: "segue5", sender: self)
                    usedDrag = true
                }
            }
        }
        
        recognizer.setTranslation(CGPoint.zero, in: self.view)
    }
    
    @IBAction func rotate(recognizer: UIRotationGestureRecognizer) {
        if let view = recognizer.view {
            view.transform = view.transform.rotated(by: recognizer.rotation)
            if view.transform.a <= -0.99 {
                if usedRotate == false{
                    performSegue(withIdentifier: "segue4", sender: self)
                    usedRotate = true
                }
            }
            recognizer.rotation = 0
        }
    }
    
    @IBAction func pinch(recognizer: UIPinchGestureRecognizer) {
        if let view = recognizer.view {
            view.transform = view.transform.scaledBy(x:    recognizer.scale, y: recognizer.scale)
            if view.transform.a > 3 {
                if usedPinch == false{
                    performSegue(withIdentifier: "segue3", sender: self)
                    usedPinch = true
                }
            }
            recognizer.scale = 1
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

