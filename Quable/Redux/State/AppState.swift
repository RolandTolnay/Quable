//
//  AppState.swift
//  Quable
//
//  Created by Roland Tolnay on 22/01/2018.
//  Copyright © 2018 Roland Tolnay. All rights reserved.
//

import Foundation
import ReSwift

struct AppState: StateType {
  
  private let serviceFactory = ProviderFactory.create(provider: .firebase)
  
  var authState: AuthState

  // TODO:- Add today state
  // TODO:- Add wallet state
  // TODO:- Add firebase state
  
  init() {
    authState = AuthState(factory: serviceFactory)
  }
}
