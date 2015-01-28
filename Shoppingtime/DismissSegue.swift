//
//  DismissSegue.swift
//  Shoppingtime
//
//  Created by Olivier Cappelle on 21/01/15.
//  Copyright (c) 2015 Olivier Cappelle. All rights reserved.
//

import UIKit

@objc(DismissSegue) class DismissSegue: UIStoryboardSegue {
    override func perform() {
        if let controller = sourceViewController.presentingViewController? {
            controller.dismissViewControllerAnimated(true, completion: nil)
        }
    }
}
