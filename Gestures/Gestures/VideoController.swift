//
//  VideoController.swift
//  Gestures
//
//  Created by Macosx on 17/6/19.
//  Copyright © 2019 UJA. All rights reserved.
//

import UIKit
class VideoController: UIViewController {
    
    @IBOutlet weak var web: UIWebView!
    //@IBOutlet weak var doubletap: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let urlpath = Bundle.main.path(forResource: "1 Toque dos dedos", ofType: "mp4")
        let fileURL = NSURL(fileURLWithPath: urlpath!)
        web.loadHTMLString("<iframe width = \" \(self.web.frame.width) \" height = \" \(self.web.frame.height)\" src = \"\(fileURL)\"> </iframe>", baseURL: nil)
    }
}
