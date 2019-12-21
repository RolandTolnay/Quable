//
//  ProviderFactory.swift
//  Quable
//
//  Created by Roland Tolnay on 22/01/2018.
//  Copyright © 2018 Roland Tolnay. All rights reserved.
//

import Foundation

class ProviderFactory {
  
  static func create(provider: ServiceProvider) -> ServiceFactory.Type {
    
    switch provider {
      case .firebase:
        return FirebaseFactory.self
    }
  }
}
