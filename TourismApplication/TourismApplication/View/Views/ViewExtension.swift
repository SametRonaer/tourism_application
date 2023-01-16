//
//  ViewExtension.swift
//  TourismApplication
//
//  Created by Samet Ronaer on 16.01.2023.
//

import UIKit

extension  UIView {
    public var screenWidth: CGFloat {
        return UIScreen.main.bounds.width
    }

    public var screenHeight: CGFloat {
        return UIScreen.main.bounds.height
    }
   
    public var screenBounds: CGRect {
        return UIScreen.main.bounds
    }
}
