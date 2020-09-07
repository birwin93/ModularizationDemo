//
//  InvestingImplementation.swift
//  Investing
//
//  Created by Billy Irwin on 9/7/20.
//  Copyright © 2020 ModuleDemo. All rights reservb ed.
//

import InvestingInterface
import UI

public final class InvestingImplementation: InvestingInterface {

    public init() {}

    public func investingRouter() -> Router {
        return InvestingRouter()
    }

    public func tradeRouter(id: String) -> Router {
        return TraderRouter(id: id)
    }
}
