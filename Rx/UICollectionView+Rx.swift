//
//  UICollectionView+Rx.swift
//  Copyright © 2019 Sung hyun. All rights reserved.
//

import RxCocoa

extension Reactive where Base: UICollectionView{
    var backgroundView: Binder<UIView?>{
        return Binder(self.base, binding:{ (base,view) in
            base.backgroundView = view
        })
    }
}
