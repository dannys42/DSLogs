//
//  DSLogs.swift
//  Pods-DSLogs
//
//  Created by Danny Sung on 03/22/2020.
//

import Foundation
import os.log

public func DLog(_ text: String, file: String=#file, line: Int=#line) {
    #if ENABLE_LOGS
    os_log("<%@:%d> %@", log: OSLog.dsLog, type: .default, file, line, text)
    #endif
}

public func ELog(_ text: String, file: String=#file, line: Int=#line) {
    os_log("<%@:%d> ERROR: %@", log: OSLog.dsLog, type: .default, file, line, text)
}

public func WLog(_ text: String, file: String=#file, line: Int=#line) {
    os_log("<%@:%d> WARNING: %@", log: OSLog.dsLog, type: .default, file, line, text)
}

extension OSLog {
static let dsLog = OSLog(subsystem: "dsLog", category: "dsLog")
}
