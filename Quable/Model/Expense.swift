//
//  Expense.swift
//  Quable
//
//  Created by Roland Tolnay on 23/01/2018.
//  Copyright © 2018 Roland Tolnay. All rights reserved.
//

import Foundation

struct ExpenseKeys {
  
  static let createdAt = "createdAt"
  static let category = "category"
  static let amount = "amount"
}

struct Expense {
  
  var createdAt: Date
  var category: Category
  var amount: Int
  
  init?(dictionary: [String: Any]) {
    if let createdAtString = dictionary[ExpenseKeys.createdAt] as? String,
      let createdAt = Formatter.iso8601.date(from: createdAtString),
      let categoryString = dictionary[ExpenseKeys.category] as? String,
      let amount = dictionary[ExpenseKeys.amount] as? Int {
      
      self.createdAt = createdAt
      self.category = Category(string: categoryString)
      self.amount = amount
      
    } else {
      return nil
    }
  }
  
  func toDictionary() -> [String: Any] {
    
    var result = [String: Any]()
    
    result[ExpenseKeys.amount] = self.amount
    result[ExpenseKeys.category] = self.category.stringValue
    result[ExpenseKeys.createdAt] = Formatter.iso8601.string(from: self.createdAt)
    
    return result
  }
}

extension Expense: Equatable {
  
  static func == (lhs: Expense, rhs: Expense) -> Bool {
    return lhs.createdAt == rhs.createdAt &&
      lhs.category == rhs.category
  }
}
