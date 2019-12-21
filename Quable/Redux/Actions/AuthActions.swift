//
//  Authentication.swift
//  Quable
//
//  Created by Roland Tolnay on 22/01/2018.
//  Copyright © 2018 Roland Tolnay. All rights reserved.
//

import Foundation
import ReSwift

struct AuthenticateAction: Action { }

struct AuthSuccessAction: Action {
  
  var userId: String
}

struct AuthErrorAction: Action {
  
  var error: Error
}
