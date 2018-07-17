//
//  ProfileTabViewController.swift
//  current-place-on-map
//
//  Created by George Pazdral (work) on 3/27/18.
//  Copyright © 2018 William French. All rights reserved.
//

import Foundation
import UIKit
import WebKit
import Firebase

class ProfileTabViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.tabBarController?.navigationItem.hidesBackButton = true;
        //self.navigationItem.hidesBackButton = true
        self.navigationController?.navigationBar.tintColor = UIColor.white
        let icon = UIImage.init(named: "back")?.withRenderingMode(.alwaysOriginal)
        let backButton = UIBarButtonItem.init(image: icon!, style: .plain, target: self, action: #selector(self.dismissSelf))
        self.navigationItem.leftBarButtonItem = backButton
        
        self.navigationItem.title = "Austin Programmer Community"
    }
    override func viewDidAppear(_ animated: Bool) {
        
       // self.navigationItem.hidesBackButton = true
    }
    
    @objc func dismissSelf() {
        if let navController = self.navigationController {
            navController.popViewController(animated: true)
        }
    }
}
