//
//  ViewController.swift
//  MKLogger-Example
//
//  Created by Ленар Гилязов on 19.01.2021.
//

import UIKit
import LGLogger

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    Logger.log("Example log", event: .debug)
    Logger.log("Example log 2", event: .warning, category: .main, subsystem: "com.mkLogger.example")
  }


}

