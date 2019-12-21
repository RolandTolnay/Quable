//
//  Category.swift
//  Quable
//
//  Created by Roland Tolnay on 23/01/2018.
//  Copyright © 2018 Roland Tolnay. All rights reserved.
//

import Foundation

enum Category {
  
  case health
  case home
  case foodDrinks
  case travel
  case fun
  case guiltyPleasures
  case styleImage
  case stuff
  case gifts
  case other
  
  case custom(name: String)
  
  var stringValue: String {
    switch self {
      case .health: return "health"
      case .home: return "home"
      case .foodDrinks: return "foodDrinks"
      case .travel: return "travel"
      case .fun: return "fun"
      case .guiltyPleasures: return "guiltyPleasures"
      case .styleImage: return "styleImage"
      case .stuff: return "stuff"
      case .gifts: return "gifts"
      case .other: return "other"
      
      case .custom(let value): return value
    }
  }
  
  init(string: String) {
    switch string {
      case "health": self = .health
      case "home": self = .home
      case "foodDrinks": self = .foodDrinks
      case "travel": self = .travel
      case "fun": self = .fun
      case "guiltyPleasures": self = .guiltyPleasures
      case "styleImage": self = .styleImage
      case "stuff": self = .stuff
      case "gifts": self = .gifts
      case "other": self = .other
      
      default: self = .custom(name: string)
    }
  }
}

extension Category: Equatable {
  
  static func == (lhs: Category, rhs: Category) -> Bool {
    return lhs.stringValue == rhs.stringValue
  }
}
