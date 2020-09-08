//
//  HistoryImplementation.swift
//  History
//
//  Created by Billy Irwin on 9/7/20.
//  Copyright © 2020 ModuleDemo. All rights reserved.
//

import HistoryInterface
import UI

public final class HistoryImplementation: HistoryInterface {

    public init() {}

    public func historyRouter() -> Router {
        return HistoryRouter()
    }
}

