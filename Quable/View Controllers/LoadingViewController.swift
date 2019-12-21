//
//  ViewController.swift
//  Quable
//
//  Created by Roland Tolnay on 22/01/2018.
//  Copyright © 2018 Roland Tolnay. All rights reserved.
//

import UIKit
import ReSwift
import NVActivityIndicatorView
import ChameleonFramework

class LoadingViewController: UIViewController, StoreSubscriber {
  
  // MARK: -
  // MARK: IBOutlets
  // --------------------
  @IBOutlet weak var activityIndicatorView: NVActivityIndicatorView!
  
  // MARK: -
  // MARK: Lifecycle
  // --------------------
  override func viewDidLoad() {
    super.viewDidLoad()
    
    activityIndicatorView.color = UIColor.white
    store.dispatch(
      AuthenticateAction()
    )
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    store.subscribe(self) { state in
      state.select { $0.authState }
    }
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    self.view.backgroundColor = UIColor.flatYellowDark
    activityIndicatorView.startAnimating()
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    
    store.unsubscribe(self)
  }
  
  // MARK: -
  // MARK: Render
  // --------------------
  func newState(state: AuthState) {
    if let error = state.error {
      showMessage(title: "Authentication Error", message: error.localizedDescription)
      return
    }
    
    if state.userId != nil {
      activityIndicatorView.stopAnimating()
      navigateToMainScreen()
    }
  }
  
  // MARK: -
  // MARK: Private methods
  // --------------------
  private func navigateToMainScreen() {
    
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let mainViewController =
      storyboard.instantiateViewController(withIdentifier: String(describing: MainViewController.self))
    self.present(mainViewController, animated: false, completion: nil)
  }
  
  private func showMessage(title: String, message: String) {
    
    let alertController = UIAlertController(title: title,
                                            message: message,
                                            preferredStyle: .alert)
    let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
    alertController.addAction(defaultAction)
    present(alertController, animated: true, completion: nil)
  }
}
