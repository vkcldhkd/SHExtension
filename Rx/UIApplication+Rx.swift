//
//  UIApplication+Rx.swift
//  Copyright © 2019 Sung hyun. All rights reserved.
//

import UIKit
import RxCocoa

extension Reactive where Base: UIApplication{
    public var isIgnoringInteractionEvents: Binder<Bool> {
        return Binder(self.base, binding: { [weak base = self.base] (application, active) in
            guard let base = base else { return }
            active ? base.beginIgnoringInteractionEvents() : base.endIgnoringInteractionEvents()
        })
    }
}
