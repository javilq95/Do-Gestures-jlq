//
//  VideoController10.swift
//  Gestures
//
//  Created by Macosx on 21/6/19.
//  Copyright © 2019 UJA. All rights reserved.
//

import UIKit
class VideoController10: UIViewController {
    
    @IBOutlet weak var web: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let urlpath = Bundle.main.path(forResource: "15 Toque tres dedos", ofType: "mp4")
        let fileURL = NSURL(fileURLWithPath: urlpath!)
        web.loadHTMLString("<iframe width = \" \(self.web.frame.width) \" height = \" \(self.web.frame.height)\" src = \"\(fileURL)\"> </iframe>", baseURL: nil)
    }
}
