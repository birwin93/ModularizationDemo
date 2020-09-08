//
//  InvestingInterface.swift
//  Cash
//
//  Created by Billy Irwin on 9/7/20.
//  Copyright © 2020 ModuleDemo. All rights reserved.
//

import Foundation
import UI

public protocol InvestingInterface {

    func investingRouter() -> Router
}

public final class InvestingModule {

    public static var interface: InvestingInterface!

    public static func register(_ interface: InvestingInterface) {
        self.interface = interface
    }
}

