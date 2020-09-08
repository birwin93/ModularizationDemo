//
//  HistoryInterface.swift
//  Cash
//
//  Created by Billy Irwin on 9/7/20.
//  Copyright © 2020 ModuleDemo. All rights reserved.
//

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

public final class HistoryModule {

    public static var interface: HistoryInterface!

    public static func register(_ interface: HistoryInterface) {
        self.interface = interface
    }
}

