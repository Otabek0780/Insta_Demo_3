//
//  SignInViewController.swift
//  Insta_Demo_3
//
//  Created by kim jong moon on 31/01/2021.
//

import UIKit

class SignInViewController: BaseViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - Methods
    
    func callSignUpViewController() {
        let vc = SignUpViewController(nibName: "SignUpViewController", bundle: nil)
        self.present(vc, animated: true, completion: nil)
    }
    
    
    
    // MARK: - Actions
    
    @IBAction func onSignedIn(_ sender: Any) {
        sceneDelegate().callHomeViewController()
    }
    
    @IBAction func onSignedUp(_ sender: Any) {
        callSignUpViewController()
    }
    

}
