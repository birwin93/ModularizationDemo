//
//  CashImplementation.swift
//  Cash
//
//  Created by Billy Irwin on 9/7/20.
//  Copyright © 2020 ModuleDemo. All rights reserved.
//

import CashInterface
import UI

public final class CashImplementation: CashInterface {

    public init() {}

    public func cashRouter() -> Router {
        return CashRouter()
    }
}
