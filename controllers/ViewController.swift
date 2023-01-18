//
//  ViewController.swift
//  FahemTest
//
//  Created by ahlam on 16/01/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnClicked(_ sender: Any) {
        
        let authStoryBoard = UIStoryboard(name: "Auth", bundle: nil)
        let signUpVC = authStoryBoard.instantiateViewController(withIdentifier: "signUpVC")
        present(signUpVC, animated: false)
    }
}

