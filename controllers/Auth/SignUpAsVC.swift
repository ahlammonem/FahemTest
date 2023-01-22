//
//  SignUpAsVC.swift
//  FahemTest
//
//  Created by ahlam on 21/01/2023.
//

import UIKit

class SignUpAsVC: UIViewController {

    @IBOutlet var alreadyHaveAccountBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpalreadyhaveAccountBtn()
       
    }
    func setUpalreadyhaveAccountBtn(){
        let attributedText = NSMutableAttributedString(string: "Already have an account ? " , attributes: [NSMutableAttributedString.Key.font : UIFont.systemFont(ofSize: 14), NSMutableAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 1)])
        
        let attributedSubText = NSMutableAttributedString(string: "Login " , attributes: [NSMutableAttributedString.Key.font : UIFont.systemFont(ofSize: 14), NSMutableAttributedString.Key.foregroundColor : UIColor.systemGreen])
        
        attributedText.append(attributedSubText)
        alreadyHaveAccountBtn.setAttributedTitle(attributedText, for: UIControl.State.normal)
    }
    


}
