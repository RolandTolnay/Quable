//
//  ServiceFactory.swift
//  Quable
//
//  Created by Roland Tolnay on 22/01/2018.
//  Copyright © 2018 Roland Tolnay. All rights reserved.
//

import Foundation

protocol ServiceFactory {
  
  static func authService() -> Authentication
}
