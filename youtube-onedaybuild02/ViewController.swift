//
//  ViewController.swift
//  youtube-onedaybuild02
//
//  Created by user on 30/03/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var model = Model()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
        
    }


}

