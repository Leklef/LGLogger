//
//  Date+Ext.swift
//  LGLogger
//
//  Created by Lenar Gilyazov on 19.01.2021.
//

import Foundation

extension Date {
   func toString() -> String {
      return Logger.dateFormatter.string(from: self as Date)
   }
}
