//
//  XLPagerTabStrip+Rx.swift
//  Copyright © 2019 Sung hyun. All rights reserved.
//

import RxCocoa
import XLPagerTabStrip
extension Reactive where Base: PagerTabStripViewController{
    
    
    public var moveTo: Binder<Int>{
        return Binder(self.base, binding: { (base, index) in
            base.moveToViewController(at: index, animated: true)
        })
    }
}

