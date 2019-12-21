//
//  AppReducer.swift
//  Quable
//
//  Created by Roland Tolnay on 22/01/2018.
//  Copyright © 2018 Roland Tolnay. All rights reserved.
//

import Foundation
import ReSwift

func appReducer(action: Action, state: AppState?) -> AppState {
  var state = state ?? AppState()
  
  state.authState = authReducer(action: action, state: state.authState)
  
  return state
}
