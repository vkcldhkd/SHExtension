//
//  UINavigation+Rx.swift
//  Copyright © 2019 Sung hyun. All rights reserved.
//

import RxCocoa

extension Reactive where Base: UINavigationItem{
    public var rightButton: Binder<UIBarButtonItem>{
        return Binder(self.base, binding: { (base, item) in
            base.rightBarButtonItem = item
        })
    }
}

extension Reactive where Base: UIBarButtonItem{
    var image: Binder<UIImage?>{
        return Binder(self.base, binding: { (base, image) in
            base.image = image
        })
    }
}
