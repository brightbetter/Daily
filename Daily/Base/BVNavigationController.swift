//
//  BVNavigationController.swift
//  Daily
//
//  Created by Bright on 2020/3/25.
//  Copyright © 2020 Bright. All rights reserved.
//

import UIKit

class BVNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension BVNavigationController{
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if children.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: animated)
    }
}
