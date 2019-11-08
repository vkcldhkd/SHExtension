//
//  AttributedLabel+Rx.swift
//  Copyright © 2019 Sung hyun. All rights reserved.
//

import RxCocoa
import RxSwift
import AttributedLabel

extension Reactive where Base: AttributedLabel{
    var attributedString: Binder<NSAttributedString?>{
        return Binder(self.base, binding: { [weak base = self.base] (label, attribtedString) in
            guard let base = base else { return }
            base.attributedText = attribtedString
        })
    }

    var text: Binder<String?>{
        return Binder(self.base, binding: { [weak base = self.base] (label, text) in
            guard let base = base else { return }
            base.text = text
        })
    }
}
