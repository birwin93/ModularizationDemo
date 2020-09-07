//
//  TradeViewController.swift
//  Investing
//
//  Created by Billy Irwin on 9/7/20.
//  Copyright © 2020 ModuleDemo. All rights reserved.
//

import UI
import UIKit

class TraderRouter: Router {

    private let id: String

    init(id: String) {
        self.id = id
        super.init()
    }

    override func baseViewController() -> UIViewController {
        return TradeViewController(id: id)
    }
}

class TradeViewController: UIViewController {

    private let id: String

    init(id: String) {
        self.id = id
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Trade: \(id)"
        view.backgroundColor = .red
    }
}
