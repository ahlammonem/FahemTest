//
//  NumberOfChildrenVC.swift
//  FahemTest
//
//  Created by POMAC on 22/01/2023.
//

import UIKit

@available(iOS 15.0, *)
@available(iOS 16.0, *)

class NumberOfChildrenVC: UIViewController , UISheetPresentationControllerDelegate , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var childrenTV: UITableView!
    
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 3
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = childrenTV.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ChildrenCell
            
            cell.childrenNumLbl.text = "1"
            cell.selectedBtn.isHidden = true
            cell.selectionStyle = .none

                
            

            return cell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           
            print(indexPath.row)
        }
        
 
 
    override func viewDidLoad() {
            super.viewDidLoad()
            
            childrenTV.delegate = self
            childrenTV.dataSource = self

            var sheetPresentationController : UISheetPresentationController {
                presentationController as! UISheetPresentationController
            }
            
            let smallId = UISheetPresentationController.Detent.Identifier("small")
            let smallDetent = UISheetPresentationController.Detent.custom(identifier: smallId) { context in
                return 200
            }
            
            sheetPresentationController.delegate = self
            sheetPresentationController.detents = [
                .medium() , smallDetent ]
            sheetPresentationController.selectedDetentIdentifier = smallId
            sheetPresentationController.prefersGrabberVisible = true


        }
        
      


    }



