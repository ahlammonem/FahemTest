//
//  SignUpAsFamilyVC.swift
//  FahemTest
//
//  Created by ahlam on 21/01/2023.
//

import UIKit
import TextFieldEffects

class SignUpAsFamilyVC: UIViewController {

    //MARK: Text Fields Outletes
    @IBOutlet weak var nameTF: HoshiTextField!
    @IBOutlet weak var phoneTF: HoshiTextField!
    @IBOutlet weak var emailTF: HoshiTextField!
    @IBOutlet weak var passwordTF: HoshiTextField!
    @IBOutlet weak var confirmPassTF: HoshiTextField!
    @IBOutlet weak var cityTF: HoshiTextField!
    @IBOutlet weak var childrenTF: HoshiTextField!
    
    //MARK: Buttons Outletes
    @IBOutlet var alreadyHaveAccountBtn: UIButton!
    @IBOutlet var showHideConfirmPassBtn: UIButton!
    @IBOutlet var showHidePassBtn: UIButton!
    @IBOutlet var checkPrivacyBtn: UIButton!
    @IBOutlet var numberOfChildrenBtn: UIButton!
    @IBOutlet var cityDropDownBtn: UIButton!
    
    //MARK: Vars
    var passIconClick = true
    var confirmPassIconClick = true

    
    //MARK: life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        removeButtonsTexts()
        setUpalreadyhaveAccountBtn()
        
    }
    

    
    @IBAction func showHidePassClicked(_ sender: Any) {
        if passIconClick {
            passwordTF.isSecureTextEntry = false
            showHidePassBtn.setImage(UIImage(named: "show"), for: .normal)

            } else {
                passwordTF.isSecureTextEntry = true
                showHidePassBtn.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            }
           
        passIconClick.toggle()
    }
    
    @IBAction func showHideConfirmPassClicked(_ sender: Any) {
        
        if confirmPassIconClick {
            confirmPassTF.isSecureTextEntry = false
            showHidePassBtn.setImage(UIImage(named: "show"), for: .normal)

            } else {
                confirmPassTF.isSecureTextEntry = true
                showHideConfirmPassBtn.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            }
           
        passIconClick.toggle()
        
    }
    
    func setUpalreadyhaveAccountBtn(){
        let attributedText = NSMutableAttributedString(string: "Already have an account ? " , attributes: [NSMutableAttributedString.Key.font : UIFont.systemFont(ofSize: 14), NSMutableAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 1)])
        
        let attributedSubText = NSMutableAttributedString(string: "Login " , attributes: [NSMutableAttributedString.Key.font : UIFont.systemFont(ofSize: 14), NSMutableAttributedString.Key.foregroundColor : UIColor.systemGreen])
        
        attributedText.append(attributedSubText)
        alreadyHaveAccountBtn.setAttributedTitle(attributedText, for: UIControl.State.normal)
    }
    
    func removeButtonsTexts(){
        checkPrivacyBtn.setTitle("", for: .normal)
        showHidePassBtn.setTitle("", for: .normal)
        showHideConfirmPassBtn.setTitle("", for: .normal)
        cityDropDownBtn.setTitle("", for: .normal)
        numberOfChildrenBtn.setTitle("", for: .normal)
    }


}
