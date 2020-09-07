//
//  HistoryViewController.swift
//  History
//
//  Created by Billy Irwin on 9/7/20.
//  Copyright © 2020 ModuleDemo. All rights reserved.
//

import Context
import HistoryInterface
import UI
import UIKit

class HistoryRouter: Router {

    override func baseViewController() -> UIViewController {
        return HistoryViewController(router: self)
    }
}

class HistoryViewController: MenuViewController {

    private let router: HistoryRouter

    init(router: HistoryRouter) {
        self.router = router
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "History"
    }

    override func menuItems() -> [MenuItem] {
        Context.shared.history.menuItems(
            for: [.trades, .transactions],
            from: router
        )
    }
}
