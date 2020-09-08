//
//  ViewController.swift
//  ModuleDemo
//
//  Created by Billy Irwin on 9/7/20.
//  Copyright © 2020 module. All rights reserved.
//

import CashInterface
import HistoryInterface
import InvestingInterface
import UI
import UIKit

class ViewController: MenuViewController {

    override func menuItems() -> [MenuItem] {
        return [
            MenuItem(title: "Cash", tapHandler: {
                CashModule.interface.cashRouter().push(onto: self.navigationController)
            }),
            MenuItem(title: "History", tapHandler: {
                HistoryModule.interface.historyRouter().push(onto: self.navigationController)
            }),
            MenuItem(title: "Investing", tapHandler: {
                InvestingModule.interface.investingRouter().push(onto: self.navigationController)
            })
        ]
    }
}

