//
//  BaseViewController.swift
//  TourismApplication
//
//  Created by Samet Ronaer on 16.01.2023.
//

import UIKit

extension UIViewController {

    func showLoadingIndicator(){
        DispatchQueue.main.async {
            let indicator : AppLoadingIndicator = AppLoadingIndicator()
            self.view.addSubview(indicator)
        }
       
    }
    
    func removeLoadingIndicator(){
        DispatchQueue.main.async {
            let myIndicator : UIView? = self.view.subviews.first(where: { uiView in
                 return uiView is AppLoadingIndicator
             })
            myIndicator?.removeFromSuperview()
        }
    }
    
  

}
