//
//  HistoryImplementation.swift
//  History
//
//  Created by Billy Irwin on 9/7/20.
//  Copyright © 2020 ModuleDemo. All rights reserved.
//

import CashInterface
import InvestingInterface
import HistoryInterface
import UI

public final class HistoryImplementation: HistoryInterface {

    public init() {}

    public func historyRouter() -> Router {
        return HistoryRouter()
    }

    public func menuItems(for types: [HistoryType], from router: Router) -> [MenuItem] {
        var items: [MenuItem] = []

        for type in types {
            switch type {
            case .trades:
                for id in ["AAPL", "TSLA", "HOOD"] {
                    items.append(MenuItem(
                        title: "Trade \(id)",
                        tapHandler: {
                            InvestingModule.interface.tradeRouter(id: id).push(onto: router)
                        }
                    ))
                }

            case .transactions:
                for id in ["WALMART", "7 ELEVEN"] {
                    items.append(MenuItem(
                        title: "Transaction \(id)",
                        tapHandler: {
                            CashModule.interface.transactionRouter(id: id).push(onto: router)
                        }
                    ))
                }
            }
        }

        return items
    }
}

