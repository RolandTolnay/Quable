//
//  AuthReducer.swift
//  Quable
//
//  Created by Roland Tolnay on 22/01/2018.
//  Copyright © 2018 Roland Tolnay. All rights reserved.
//

import Foundation
import ReSwift

func authReducer(action: Action, state: AuthState) -> AuthState {
  var state = state
  
  switch action {
    case _ as AuthenticateAction:
      state.service.authenticate()
    case let authSuccess as AuthSuccessAction:
      state.userId = authSuccess.userId
    case let authError as AuthErrorAction:
      state.error = authError.error
    
    default:
      break
  }
  
  return state
}
