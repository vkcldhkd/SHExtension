//
//  UILabel+Rx.swift
//  Copyright © 2019 Sung hyun. All rights reserved.
//

import RxCocoa

extension Reactive where Base: UILabel{
    public var textColor: Binder<UIColor>{
        return Binder(self.base, binding: { [weak base = self.base] (_, color) in
            guard let base = base else { return }
            base.textColor = color
        })
    }
}

