//
//  Authentication.swift
//  Quable
//
//  Created by Roland Tolnay on 22/01/2018.
//  Copyright © 2018 Roland Tolnay. All rights reserved.
//

import Foundation

protocol Authentication {
  
  func authenticate()
}

enum ServiceError: LocalizedError {
  
  case noData
  case noUser
  case invalidData
  
  var localizedDescription: String {
    switch self {
      case .noData:
        return "No data was found."
      case .noUser:
        return "No user was found."
      case .invalidData:
        return "Invalid data"
      }
  }
}
