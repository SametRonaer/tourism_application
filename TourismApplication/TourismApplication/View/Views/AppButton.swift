//
//  AppButton.swift
//  TourismApplication
//
//  Created by Samet Ronaer on 16.01.2023.
//

import UIKit

class AppButton: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    var onTap : (() -> Int)?
    
    override func awakeFromNib() {
        self.backgroundColor = UIColor.orange
        self.frame.size = CGSize(width: 300, height: 300)
        self.isUserInteractionEnabled = true
        
    }

}
