//
//  BaseViewController.swift
//  Insta_Demo_3
//
//  Created by kim jong moon on 31/01/2021.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    
    // MARK: - Methods
    
    func appDelegate() -> AppDelegate {
        return ((UIApplication.shared.delegate as? AppDelegate)!)
    }
    func sceneDelegate() -> SceneDelegate {
        return ((UIApplication.shared.delegate as? SceneDelegate)!)
    }
    

}
