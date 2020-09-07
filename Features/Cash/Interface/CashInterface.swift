//
//  CashInterface.swift
//  UI
//
//  Created by Billy Irwin on 9/7/20.
//  Copyright © 2020 ModuleDemo. All rights reserved.
//

import Foundation
import UI

public protocol CashInterface {

    func cashRouter() -> Router
    func transactionRouter(id: String) -> Router
}

public final class CashModule {

    public static var interface: CashInterface!

    public static func register(_ interface: CashInterface) {
        self.interface = interface
    }
}
