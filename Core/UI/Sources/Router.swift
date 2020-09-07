//
//  Router.swift
//  UI
//
//  Created by Billy Irwin on 9/7/20.
//  Copyright © 2020 ModuleDemo. All rights reserved.
//

import UIKit

open class Router {

    weak var navigationController: UINavigationController?

    public init() {}

    open func baseViewController() -> UIViewController {
        fatalError()
    }

    public func push(onto navigationController: UINavigationController?) {
        self.navigationController = navigationController
        let viewController = baseViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }

    public func push(onto router: Router?) {
        push(onto: router?.navigationController)
    }
}
