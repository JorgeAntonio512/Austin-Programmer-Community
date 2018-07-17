//
//  DonateViewController.swift
//  current-place-on-map
//
//  Created by George Pazdral (work) on 6/7/18.
//  Copyright © 2018 William French. All rights reserved.
//

import Foundation
import UIKit
import TipJarViewController

class DonateViewController: UIViewController {

    struct TipJarOptions: TipJarConfiguration {
        static var topHeader = "Hi There"
        
        static var topDescription = """
If you've been enjoying this app and would like to show your support, please consider a tip. They go such a long way, and every little bit helps. Thanks! :)
"""
        
        static func subscriptionProductIdentifier(for row: SubscriptionRow) -> String {
            switch row {
            case .monthly: return "1z"
            case .yearly: return "2z"
            }
        }
        
        static func oneTimeProductIdentifier(for row: OneTimeRow) -> String {
            switch row {
            case .small: return "sparez"
            case .medium: return "2_Buckz"
            case .large: return "Fiverz"
            case .huge: return "Hammyz"
            case .massive: return "Mooz"
            }
        }
        
        static var termsOfUseURLString = "http://austinprogrammercommunity.blogspot.com/p/terms-of-use.html"
        static var privacyPolicyURLString = "http://austinprogrammercommunity.blogspot.com/p/privacy-policy.html"
    }

    
    override func viewDidLoad() {
        let controller = TipJarViewController<TipJarOptions>()
        addChildViewController(controller)
        view.addSubview(controller.view)
        controller.didMove(toParentViewController: self)
   
        
        let icon = UIImage.init(named: "back")?.withRenderingMode(.alwaysOriginal)
        let backButton = UIBarButtonItem.init(image: icon!, style: .plain, target: self, action: #selector(self.dismissSelf))
        self.navigationItem.leftBarButtonItem = backButton
        
        self.navigationItem.title = "Austin Programmer Community"
    }
    
    
    @objc func dismissSelf() {
        if let navController = self.navigationController {
            navController.popViewController(animated: true)
        }
    }
}


