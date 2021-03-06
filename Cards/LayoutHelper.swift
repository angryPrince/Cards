//
//  Lay.swift
//  Cards
//
//  Created by Paolo on 15/10/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import Foundation
import UIKit

class LayoutHelper {
    
    internal let rect: CGRect!
    
    init(rect: CGRect) { self.rect = rect }
    
    func X(_ percentage: CGFloat ) -> CGFloat { return percentage*rect.width/100 }
    func Y(_ percentage: CGFloat ) -> CGFloat { return percentage*rect.height/100 }
    func X(_ percentage: CGFloat, from: UIView ) -> CGFloat { return X(percentage) + from.frame.maxX }
    func Y(_ percentage: CGFloat, from: UIView ) -> CGFloat { return Y(percentage) + from.frame.maxY }
    
    func RevX(_ percentage: CGFloat, width: CGFloat ) -> CGFloat { return (rect.width - X(percentage)) - width }
    func RevY(_ percentage: CGFloat, height: CGFloat) -> CGFloat { return (rect.height - Y(percentage)) - height }
    func RevY(_ percentage: CGFloat, height: CGFloat, from: UIView) -> CGFloat { return  from.frame.minY - Y(percentage) - height }
    
    func Width(_ percentage: CGFloat, of view: UIView) -> CGFloat { return percentage*view.frame.width/100 }
    func Height(_ percentage: CGFloat, of view: UIView) -> CGFloat { return percentage*view.frame.height/100 }
    
    static func XScreen(_ percentage: CGFloat ) -> CGFloat { return percentage*UIScreen.main.bounds.width/100 }
    static func YScreen(_ percentage: CGFloat ) -> CGFloat { return percentage*UIScreen.main.bounds.height/100 }
    
}
