//
//  FirestoreFactory.swift
//  Quable
//
//  Created by Roland Tolnay on 22/01/2018.
//  Copyright © 2018 Roland Tolnay. All rights reserved.
//

import Foundation

class FirebaseFactory: ServiceFactory {
  
  static func authService() -> Authentication {
    return FirebaseAuthentication()
  }
  
}
