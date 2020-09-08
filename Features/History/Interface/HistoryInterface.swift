//
//  HistoryInterface.swift
//  Cash
//
//  Created by Billy Irwin on 9/7/20.
//  Copyright © 2020 ModuleDemo. All rights reserved.
//

import Context
import Foundation
import UI

/// This lives in the interface module since it's publicly available
/// to other modules
public enum HistoryType {
    case transactions
    case trades
}

public protocol HistoryInterface {

    func historyRouter() -> Router

    func menuItems(for types: [HistoryType], from router: Router) -> [MenuItem]
}

public extension ContainerKey {
    static let history: ContainerKey = "history"
}

extension Context {

    public var history: HistoryInterface {
        return getObject(for: .history) as! HistoryInterface
    }
}

