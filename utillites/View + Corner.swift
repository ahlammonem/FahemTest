//
//  View + Corner.swift
//  FahemTest
//
//  Created by ahlam on 17/01/2023.
//

import UIKit

class ViewCorner: UIView {

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
