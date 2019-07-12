//
//  AttributedLabel+Rx.swift
//  Copyright © 2019 Sung hyun. All rights reserved.
//

import RxCocoa
import RxSwift
import AttributedLabel

extension Reactive where Base: AttributedLabel{
    var attributedString: Binder<NSAttributedString?>{
        return Binder(self.base, binding: { (label, attribtedString) in
            label.attributedText = attribtedString
        })
    }
    
    var text: Binder<String?>{
        return Binder(self.base, binding: { (label, text) in
            label.text = text
        })
    }
}
