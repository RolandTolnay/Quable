//
//  AuthState.swift
//  Quable
//
//  Created by Roland Tolnay on 22/01/2018.
//  Copyright © 2018 Roland Tolnay. All rights reserved.
//

import Foundation
import ReSwift

struct AuthState: StateType {
  
  var service: Authentication
  
  var userId: String?
  var error: Error?
  
  init(factory: ServiceFactory.Type) {
    service = factory.authService()
  }
}
