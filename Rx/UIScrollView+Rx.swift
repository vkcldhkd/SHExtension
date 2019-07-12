//
//  UIScrollView+Rx.swift
//  Copyright © 2019 Sung hyun. All rights reserved.
//

import RxCocoa
import RxSwift
import Foundation
import MXParallaxHeader

extension Reactive where Base: UIScrollView {
    
    var isReachedBottom: ControlEvent<Void> {
        let source = self.contentOffset
            .filter { [weak base = self.base] offset in
                guard let base = base else { return false }
                return base.isReachedBottom(withTolerance: base.frame.height / 2)
            }
            .map { _ in Void() }
        return ControlEvent(events: source)
    }
    
    var parallaxHeaderProgress: Observable<CGFloat>{
        return self.base.parallaxHeader.rx.delegate.methodInvoked(#selector(MXParallaxHeaderDelegate.parallaxHeaderDidScroll(_:)))
            .map{ parameter in
                guard let parallaxHeader = parameter.first as? MXParallaxHeader else { return 0.0 }
                return parallaxHeader.progress
        }
    }
}
