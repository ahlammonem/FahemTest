//
//  OnBoardingVC.swift
//  FahemTest
//
//  Created by ahlam on 21/01/2023.
//

import UIKit

class OnBoardingVC: UIViewController {

    @IBOutlet var onBoardingCollection: UICollectionView!
    var onBoardingImages = [UIImage]()
    var onBoardingLabels : [String]=[]
    var timer : Timer?
    var currentCellIndex = 0
    @IBOutlet var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpCollection()
        startTimer()

        onBoardingImages.append(UIImage(named: "onboarding1")!)
        onBoardingImages.append(UIImage(named: "onboarding2")!)
        onBoardingImages.append(UIImage(named: "onboarding3")!)
        onBoardingImages.append(UIImage(named: "onboarding4")!)
        onBoardingImages.append(UIImage(named: "onboarding5")!)
        pageControl.numberOfPages = onBoardingImages.count

       
      onBoardingLabels = ["Establish and organize your plans with Faheem" ,
                          "Track your progress and improvement with Maheer" ,
                          "Win Challenges with Azeem as motivative environment to develop yourself or your children" ,
                          "Keep informed of core keys of self-growth by Shaheen Artificial Intelligence reports" ,
                          "Read books summaries with Adeeb and keep informed by Hakeem consultations and wisdom" ]

    }
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 3, target: self, selector:#selector(moveToNext) , userInfo: nil, repeats: true)
    }
    @objc func moveToNext(){
        if currentCellIndex < onBoardingImages.count - 1  {
            currentCellIndex += 1
            onBoardingCollection.scrollToItem(at: IndexPath(row: currentCellIndex, section: 0), at: .centeredHorizontally, animated: true)
            pageControl.currentPage = currentCellIndex
        }
    }
    
    @objc func startSignUp(){
    
        let authStoryBoard = UIStoryboard(name: "Auth", bundle: nil)
        let signUpAsVC = authStoryBoard.instantiateViewController(withIdentifier: "signUpAsVC")
        present(signUpAsVC, animated: false)
    }



}

extension OnBoardingVC : UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    
  
   

    func setUpCollection(){
        onBoardingCollection.delegate = self
        onBoardingCollection.dataSource = self
        onBoardingCollection.register(UINib(nibName: "OnBoardingCell", bundle: nil), forCellWithReuseIdentifier: "OnBoardingCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return onBoardingImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OnBoardingCell", for: indexPath) as! OnBoardingCell
        cell.onBoardingImg.image = onBoardingImages[indexPath.row]
        cell.onBoardingLbl.text = onBoardingLabels[indexPath.row]
        
        if indexPath.row == 4 {
            cell.skipBtn.isHidden = true
            cell.nextBtn.setTitle("Start", for: .normal)
            cell.nextBtn.addTarget(self, action: #selector(startSignUp), for: .touchUpInside)
        }
        else{
            cell.skipBtn.isHidden = false
            cell.nextBtn.setTitle("Next", for: .normal)
            cell.nextBtn.addTarget(self, action: #selector(moveToNext), for: .touchUpInside)

        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
        currentCellIndex = indexPath.row
        pageControl.currentPage = currentCellIndex

    }
    
    
    
    
}
