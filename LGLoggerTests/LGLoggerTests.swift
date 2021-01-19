//
//  LGLoggerTests.swift
//  LGLoggerTests
//
//  Created by Lenar Gilyazov on 19.01.2021.
//

import XCTest
@testable import LGLogger

class LGLoggerTests: XCTestCase {

  func testDebug() throws {
    Logger.log("testDebug", event: .debug)
  }
  
  func testError() throws {
    Logger.log("testError", event: .error)
  }
  
  func testInfo() throws {
    Logger.log("testInfo", event: .info)
  }
  
  func testSevere() throws {
    Logger.log("testSevere", event: .severe)
  }
  
  func testVerbose() throws {
    Logger.log("testVerbose", event: .verbose)
  }
  
  func testWarning() throws {
    Logger.log("testWarning", event: .warning)
  }
  
  func testNetworkCategory() throws {
    Logger.log("testNetworkCategory", event: .debug, category: .network)
  }
  
  func testUICategory() throws {
    Logger.log("testUICategory", event: .debug, category: .ui)
  }
  
  func testCustomCategory() throws {
    Logger.log("testUICategory", event: .debug, category: .custom(name: "custom"))
  }

}
