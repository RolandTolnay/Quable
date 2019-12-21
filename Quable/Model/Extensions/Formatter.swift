//
//  Formatter+ISO8601.swift
//  Quable
//
//  Created by Roland Tolnay on 23/01/2018.
//  Copyright © 2018 Roland Tolnay. All rights reserved.
//

import Foundation

extension Formatter {
  
  static let iso8601: DateFormatter = {
    let formatter = DateFormatter()
    formatter.calendar = Calendar(identifier: .iso8601)
    formatter.locale = Locale(identifier: "en_US_POSIX")
    formatter.timeZone = TimeZone(secondsFromGMT: 0)
    formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSXXXXX"
    return formatter
  }()
}
