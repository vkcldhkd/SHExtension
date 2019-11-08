//
//  RNLoadingButton+Rx.swift
//  Copyright © 2019 Sung hyun. All rights reserved.
//

import RNLoadingButton_Swift
import RxCocoa

extension Reactive where Base: RNLoadingButton{
    public var isLoading: Binder<Bool>{
        return Binder(self.base, binding: { [weak base = self.base] (button, active) in
            guard let base = base else { return }
            base.isLoading = active
        })
    }

    public var titleColor: Binder<UIColor>{
        return Binder(self.base, binding: { [weak base = self.base] (button, color) in
            guard let base = base else { return }
            base.setTitleColor(color, for: .normal)
        })
    }
}



