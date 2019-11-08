//
//  RPCircularProgress+Rx.swift
//  Copyright © 2019 Sung hyun. All rights reserved.
//

import RPCircularProgress
import RxCocoa

extension Reactive where Base: RPCircularProgress{
    public var progress: Binder<CGFloat>{
        return Binder(self.base, binding: { [weak base = self.base] (progressBar, value) in
            guard let base = base else { return }
            base.updateProgress(value)
        })
    }
}
