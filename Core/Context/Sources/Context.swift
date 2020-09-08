//
//  Context.swift
//  Context
//
//  Created by Billy Irwin on 9/7/20.
//  Copyright © 2020 module. All rights reserved.
//

import Foundation

public typealias ContainerKey = String

/// I'm sure there's some stuff we need to do here to get this to be extra safe and such
/// This is just a MVP
public final class Context {

    // In real world we would inject this everywhere
    public static let shared = Context()

    private let queue = DispatchQueue(label: "com.module.context", attributes: .concurrent)
    private var container: [String: Any] = [:]

    public func register(_ object: Any, for key: ContainerKey) {
        queue.async(flags: .barrier) {
            self.container[key] = object
        }
    }

    public func getObject(for key: ContainerKey) -> Any {
        queue.sync {
            return self.container[key]!
        }
    }
}
