//
//  FirestoreAuthentication.swift
//  Quable
//
//  Created by Roland Tolnay on 22/01/2018.
//  Copyright © 2018 Roland Tolnay. All rights reserved.
//

import Foundation
import FirebaseAuth

class FirebaseAuthentication: Authentication {
  
  func authenticate() {
    Auth.auth().signInAnonymously() { (user, error) in
      DispatchQueue.main.async {
        guard error == nil else {
          store.dispatch(
            AuthErrorAction(error: error!)
          )
          return
        }
        guard let user = user else {
          store.dispatch(
            AuthErrorAction(error: ServiceError.noUser)
          )
          return
        }
        
        store.dispatch(
          AuthSuccessAction(userId: user.uid)
        )
      }
    }
  }
}
