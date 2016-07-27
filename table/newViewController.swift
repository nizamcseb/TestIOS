//
//  newViewController.swift
//  table
//
//  Created by Suriya on 7/18/16.
//  Copyright © 2016 MST. All rights reserved.
//

import UIKit


class newViewController: UIViewController {
    
    @IBOutlet var nav: UINavigationItem!
    
    override func viewDidLoad() {
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.nav.title = sharedPref.sharedInstance.data
    }
}