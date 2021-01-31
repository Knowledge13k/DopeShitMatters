//
//  ViewController.swift
//  DopeShitMatters
//
//  Created by TestAdobe on 1/31/21.
//

import UIKit
import FirebaseAuth
class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        handleNotAuththenticated()
        
    }
    
    private func handleNotAuththenticated(){
        // Check Auth Status
        if Auth.auth().currentUser == nil{
            // Show log in
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false)
            
        }
        
    }
}

