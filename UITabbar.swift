//
//  UITabbar.swift
//
//  Copyright © 2019 Sung hyun. All rights reserved.
//

import UIKit

fileprivate let tabBarItemTag: Int = 4942
extension UITabBar {
    public func addItemBadge(atIndex index: Int) {
        guard let itemCount = self.items?.count, itemCount > 0 else {
            return
        }
        guard index < itemCount else {
            return
        }
        removeItemBadge(atIndex: index)
        
        let badgeView = UIView()
        badgeView.tag = tabBarItemTag
        badgeView.layer.cornerRadius = 2.5
        badgeView.backgroundColor = UIColor.red
        
        let tabFrame = self.frame
        let percentX = (CGFloat(index) + 0.65) / CGFloat(itemCount)
        let x = (percentX * tabFrame.size.width).rounded(.up)
        let y = (CGFloat(0.2) * tabFrame.size.height).rounded(.up)
        badgeView.frame = CGRect(x: x, y: y, width: 5, height: 5)
        addSubview(badgeView)
    }
    
    //return true if removed success.
    @discardableResult
    public func removeItemBadge(atIndex index: Int) -> Bool {
        for subView in self.subviews {
            if subView.tag == (tabBarItemTag) {
                subView.removeFromSuperview()
                return true
            }
        }
        return false
    }
}
