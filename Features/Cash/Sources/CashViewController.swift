//
//  CashViewController.swift
//  Cash
//
//  Created by Billy Irwin on 9/7/20.
//  Copyright © 2020 ModuleDemo. All rights reserved.
//

import HistoryInterface
import UI
import UIKit

class CashRouter: Router {

    override func baseViewController() -> UIViewController {
        return CashViewController(router: self)
    }
}

class CashViewController: MenuViewController {

    private let router: CashRouter

    init(router: CashRouter) {
        self.router = router
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Cash"
    }

    override func menuItems() -> [MenuItem] {
        return HistoryModule.interface.menuItems(
            for: [.transactions],
            from: router
        )
    }
}
