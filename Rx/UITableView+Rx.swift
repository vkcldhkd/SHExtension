//
//  UITableView+Rx.swift
//  Copyright © 2019 Sung hyun. All rights reserved.
//

import RxCocoa
extension Reactive where Base: UITableView{
    public var footerView: Binder<UIView>{
        return Binder(self.base, binding:{ (base,view) in
            base.tableFooterView = view
        })
    }
}
