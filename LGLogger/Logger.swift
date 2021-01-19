//
//  Logger.swift
//  LGLogger
//
//  Created by Lenar Gilyazov on 19.01.2021.
//

import Foundation
import OSLog

public enum LogEvent: String {
  case error = "[‼️]"
  case info = "[ℹ️]"
  case debug = "[💬]"
  case verbose = "[🔬]"
  case warning = "[⚠️]"
  case severe = "[🔥]"
  
  var osLogType: OSLogType {
    switch self {
    case .debug: return .debug
    case .error: return .error
    case .info: return .info
    case .warning: return .fault
    case .severe, .verbose: return .default
    }
  }
}

public enum LogCategory {
  case main
  case ui
  case network
  case custom(name: String)
  
  var name: String {
    switch self {
    case .main: return "Main"
    case .ui: return "UI"
    case .network: return "Network"
    case .custom(let name): return name
    }
  }
}

public final class Logger {
  
  public static var dateFormat = "yyyy-MM-dd hh:mm:ssSSS"
  static var dateFormatter: DateFormatter {
    let formatter = DateFormatter()
    formatter.dateFormat = dateFormat
    formatter.locale = Locale.current
    formatter.timeZone = TimeZone.current
    return formatter
  }
  
  public static func log(
    _ object: Any,
    event: LogEvent,
    category: LogCategory = .main,
    subsystem: String? = nil,
    fileName: String = #file,
    line: Int = #line,
    column: Int = #column,
    funcName: String = #function)
  {
    let subsystem = subsystem ?? Bundle.main.bundleIdentifier ?? ""
    let message = "\(Date().toString()) \(event.rawValue)[\(sourceFileName(filePath: fileName))]:\(line) \(column) \(funcName) -> \(object)"
    if #available(iOS 14.0, *) {
      let logger = os.Logger(subsystem: subsystem, category: category.name)
      logger.log(level: event.osLogType, "\(message)")
    } else {
      let log = OSLog(subsystem: subsystem, category: category.name)
      os_log("%@", log: log, type: event.osLogType, message)
    }
  }
  
  // MARK: Private
  
  private static func sourceFileName(filePath: String) -> String {
    let components = filePath.components(separatedBy: "/")
    guard let fileName = components.last, !components.isEmpty else { return "" }
    return fileName
  }
  
}
