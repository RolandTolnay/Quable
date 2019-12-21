//
//  Result.swift
//  Quable
//
//  Created by Roland Tolnay on 22/01/2018.
//  Copyright © 2018 Roland Tolnay. All rights reserved.
//

import Foundation

enum Result<T> {
  case error(Error?)
  case value(T)
}
