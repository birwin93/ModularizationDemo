//
//  HistoryInterface.swift
//  Cash
//
//  Created by Billy Irwin on 9/7/20.
//  Copyright © 2020 ModuleDemo. All rights reserved.
//

import Foundation
import UI

public protocol HistoryInterface {

    func historyRouter() -> Router
}

public final class HistoryModule {

    public static var interface: HistoryInterface!

    public static func register(_ interface: HistoryInterface) {
        self.interface = interface
    }
}

