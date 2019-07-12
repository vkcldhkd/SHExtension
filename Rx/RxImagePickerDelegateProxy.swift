//
//  RxImagePickerDelegateProxy.swift
//  Copyright © 2019 Sung hyun. All rights reserved.
//

import RxCocoa
import UIKit

open class RxImagePickerDelegateProxy
: RxNavigationControllerDelegateProxy, UIImagePickerControllerDelegate {
    
    public init(imagePicker: UIImagePickerController) {
        super.init(navigationController: imagePicker)
    }
    
}
