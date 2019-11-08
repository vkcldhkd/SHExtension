//
//  UITableView+Rx.swift
//  Copyright © 2019 Sung hyun. All rights reserved.
//

import RxCocoa
extension Reactive where Base: UITableView{
    public var footerView: Binder<UIView?>{
        return Binder(self.base, binding:{ [weak base = self.base] (tableView,view) in
            guard let base = base else { return }
            base.tableFooterView = view
        })
    }

    var backgroundView: Binder<UIView?>{
        return Binder(self.base, binding:{ [weak base = self.base] (tableView,view) in
            guard let base = base else { return }
            base.backgroundView = view
        })
    }
}
