//
//  LogPrint.swift
//  Intrinsic
//
//  Created by Ryan Walklin on 18/06/2016.
//  Copyright © 2016 Test Toast. All rights reserved.
//

import Foundation

public enum LogLevel: UInt {
    case debug = 0,
    info,
    warning,
    error,
    critical
}

private var _loglevel: LogLevel = .debug

public func logPrint(_ level: LogLevel, _ logString: String) {
    if level.rawValue >= _loglevel.rawValue {
        print(logString)
    }
}
