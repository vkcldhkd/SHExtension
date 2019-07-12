//
//  UILabel+Rx.swift
//  Copyright © 2019 Sung hyun. All rights reserved.
//

import RxCocoa
extension Reactive where Base: UILabel{
    
    
    public var textColor: Binder<UIColor>{
        return Binder(self.base, binding: { (base, color) in
            base.textColor = color
        })
    }
}

