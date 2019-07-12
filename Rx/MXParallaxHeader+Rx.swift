//
//  MXParallaxHeader+Rx.swift
//  Copyright © 2019 Sung hyun. All rights reserved.
//

import RxCocoa
import RxSwift
import MXParallaxHeader

extension Reactive where Base: MXParallaxHeader {
    var delegate: DelegateProxy<MXParallaxHeader, MXParallaxHeaderDelegate>{
        return RxMXParallaxHeaderDelegateProxy.proxy(for: self.base)
    }
}


class RxMXParallaxHeaderDelegateProxy: DelegateProxy<MXParallaxHeader, MXParallaxHeaderDelegate>, DelegateProxyType, MXParallaxHeaderDelegate{
    static func registerKnownImplementations() {
        self.register { (header) -> RxMXParallaxHeaderDelegateProxy in
            RxMXParallaxHeaderDelegateProxy(parentObject: header, delegateProxy: self)
        }
    }
    
    static func currentDelegate(for object: MXParallaxHeader) -> MXParallaxHeaderDelegate? {
        return object.delegate
    }
    
    static func setCurrentDelegate(_ delegate: MXParallaxHeaderDelegate?, to object: MXParallaxHeader) {
        object.delegate = delegate
    }
    
    
}
