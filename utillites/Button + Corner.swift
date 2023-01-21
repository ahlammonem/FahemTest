//
//  Button + Corner.swift
//  FahemTest
//
//  Created by ahlam on 21/01/2023.
//

import Foundation

//
//  View + Corner.swift
//  FahemTest
//
//  Created by ahlam on 17/01/2023.
//

import UIKit

class UIButtonCorner : UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        addCorner()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)

        addCorner()
    }
    
    func addCorner (){
        self.layer.cornerRadius = 8
    }

}
