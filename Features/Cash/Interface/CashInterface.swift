//
//  CashInterface.swift
//  UI
//
//  Created by Billy Irwin on 9/7/20.
//  Copyright © 2020 ModuleDemo. All rights reserved.
//

import Context
import Foundation
import UI

public protocol CashInterface {

    func cashRouter() -> Router
    func transactionRouter(id: String) -> Router
}

public extension ContainerKey {
    static let cash: ContainerKey = "cash"
}

extension Context {

    public var cash: CashInterface {
        return getObject(for: .cash) as! CashInterface
    }
}
