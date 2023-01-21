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
        
        let authStoryBoard = UIStoryboard(name: "OnBoarding", bundle: nil)
        let signUpVC = authStoryBoard.instantiateViewController(withIdentifier: "OnBoardingVC")
        present(signUpVC, animated: false)
    }
}

