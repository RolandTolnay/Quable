//
//  Middleware.swift
//  Quable
//
//  Created by Roland Tolnay on 22/01/2018.
//  Copyright © 2018 Roland Tolnay. All rights reserved.
//

import Foundation
import ReSwift

let loggingMiddleware: Middleware<Any> = { dispatch, getState in
  return { next in
    return { action in
      
      print(action)
      return next(action)
    }
  }
}
