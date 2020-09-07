//
//  InvestingInterface.swift
//  Cash
//
//  Created by Billy Irwin on 9/7/20.
//  Copyright © 2020 ModuleDemo. All rights reserved.
//

import Context
import Foundation
import UI

public protocol InvestingInterface {

    func investingRouter() -> Router
    func tradeRouter(id: String) -> Router
}

public extension ContainerKey {
    static let investing: ContainerKey = "investing"
}

extension Context {

    public var investing: InvestingInterface {
        return getObject(for: .investing) as! InvestingInterface
    }
}

