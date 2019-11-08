//
//  UICollectionView+Rx.swift
//  Copyright © 2019 Sung hyun. All rights reserved.
//

import RxCocoa

import RxCocoa

extension Reactive where Base: UICollectionView{
    var backgroundView: Binder<UIView?>{
        return Binder(self.base, binding:{ [weak base = self.base] (collectionView,view) in
            guard let base = base else { return }
            base.backgroundView = view
        })
    }
}

