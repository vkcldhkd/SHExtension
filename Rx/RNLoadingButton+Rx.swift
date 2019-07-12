//
//  RNLoadingButton+Rx.swift
//  Copyright © 2019 Sung hyun. All rights reserved.
//

import RNLoadingButton_Swift
import RxCocoa

extension Reactive where Base: RNLoadingButton{
    public var isLoading: Binder<Bool>{
        return Binder(self.base, binding: { (button, active) in
            button.isLoading = active
        })
    }
    
    public var titleColor: Binder<UIColor>{
        return Binder(self.base, binding: { (button, color) in
            button.setTitleColor(color, for: .normal)
        })
    }
}


