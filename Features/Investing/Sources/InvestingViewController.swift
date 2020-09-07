//
//  InvestingViewController.swift
//  History
//
//  Created by Billy Irwin on 9/7/20.
//  Copyright © 2020 ModuleDemo. All rights reserved.
//

import UI
import UIKit

class InvestingRouter: Router {

    override func baseViewController() -> UIViewController {
        return InvestingViewController(router: self)
    }
}

class InvestingViewController: MenuViewController {

    private let router: InvestingRouter

    init(router: InvestingRouter) {
        self.router = router
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Investing"
    }

    override func menuItems() -> [MenuItem] {
        return []
    }
}

