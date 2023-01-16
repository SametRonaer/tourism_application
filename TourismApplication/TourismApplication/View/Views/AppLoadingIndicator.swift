//
//  AppLoadingIndicator.swift
//  TourismApplication
//
//  Created by Samet Ronaer on 16.01.2023.
//

import UIKit

class AppLoadingIndicator: UIView {
   
    let screenSize = UIScreen.main.bounds
    
    init(){
        let frame : CGRect = CGRect(x: 0, y: 0, width: screenSize.width, height: screenSize.height)
        
        let loadingIcon = UIView(frame: CGRect(x: (screenSize.width / 2 ) - 25 , y: (screenSize.height / 2) - 25, width: 50, height: 50))
        loadingIcon.backgroundColor = UIColor.green
        super.init(frame: frame)
        self.addSubview(loadingIcon)
        self.backgroundColor = UIColor.gray.withAlphaComponent(0.1)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
