//
//  VerificationCodeVC.swift
//  TestFahem
//
//  Created by POMAC on 18/01/2023.
//

import UIKit
import AEOTPTextField

class VerificationCodeVC: UIViewController , AEOTPTextFieldDelegate {
   
    @IBOutlet weak var verifyCodeBtn: UIButton!
    @IBOutlet weak var verifricartionTF: AEOTPTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        verifyCodeBtn.layer.cornerRadius = 8
        verifricartionTF.otpDelegate = self
        verifricartionTF.configure(with: 4)
    }
    override func viewWillAppear(_ animated: Bool) {
        
        verifricartionTF.otpBackgroundColor = .clear
        verifricartionTF.otpFilledBackgroundColor = .white
        verifricartionTF.otpFilledBorderColor = .clear
        verifricartionTF.otpCornerRaduis = 8
        verifricartionTF.otpFontSize = 32
        verifricartionTF.otpDefaultCharacter = " "
      
    }
    
    func didUserFinishEnter(the code: String) {
        print("code", code)
    }
    


}

