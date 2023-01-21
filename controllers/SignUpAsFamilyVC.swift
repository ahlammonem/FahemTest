//
//  SignUpAsFamilyVC.swift
//  FahemTest
//
//  Created by ahlam on 21/01/2023.
//

import UIKit

class SignUpAsFamilyVC: UIViewController {

    @IBOutlet var alreadyHaveAccountBtn: UIButton!
    
    @IBOutlet var showHideConfirmPassBtn: UIButton!
    @IBOutlet var showHidePassBtn: UIButton!
    @IBOutlet var checkPrivacyBtn: UIButton!
    @IBOutlet var numberOfChildrenBtn: UIButton!
    
    @IBOutlet var cityDropDownBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

       setUpalreadyhaveAccountBtn()
        checkPrivacyBtn.setTitle("", for: .normal)
        showHidePassBtn.setTitle("", for: .normal)
        showHideConfirmPassBtn.setTitle("", for: .normal)
        cityDropDownBtn.setTitle("", for: .normal)
        numberOfChildrenBtn.setTitle("", for: .normal)
    }
    
    func setUpalreadyhaveAccountBtn(){
        let attributedText = NSMutableAttributedString(string: "Already have an account ? " , attributes: [NSMutableAttributedString.Key.font : UIFont.systemFont(ofSize: 14), NSMutableAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 1)])
        
        let attributedSubText = NSMutableAttributedString(string: "Login " , attributes: [NSMutableAttributedString.Key.font : UIFont.systemFont(ofSize: 14), NSMutableAttributedString.Key.foregroundColor : UIColor.systemGreen])
        
        attributedText.append(attributedSubText)
        alreadyHaveAccountBtn.setAttributedTitle(attributedText, for: UIControl.State.normal)
    }
    


}
