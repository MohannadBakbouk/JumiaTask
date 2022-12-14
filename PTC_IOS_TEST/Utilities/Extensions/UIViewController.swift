//
//  UIViewController.swift
//  PTC_IOS_TEST
//
//  Created by Mohannad on 1/8/22.
//  Copyright © 2022 Jumia. All rights reserved.
//

import UIKit
extension UIViewController
{
    class func instantiateFromStoryboard(_ name: String = "Main") -> Self{
        return instantiateFromStoryboardHelper(name)
    }

    fileprivate class func instantiateFromStoryboardHelper<T>(_ name: String) -> T{
        let storyboard = UIStoryboard(name: name, bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: String(describing: self)) as! T
        return controller
    }
}

