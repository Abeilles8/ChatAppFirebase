//
//  LoginViewController.swift
//  ChatAppFirebase
//
//  Created by Yuta Uematsu on 2020/05/17.
//  Copyright © 2020 Yuta Uematsu. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController:UIViewController {
  
  @IBOutlet weak var emailTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  @IBOutlet weak var loginButton: UIButton!
  @IBOutlet weak var dontHaveAccountButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    loginButton.layer.cornerRadius = 8
    dontHaveAccountButton.addTarget(self, action: #selector(tappedDontHaveAccountButton), for: .touchUpInside)
    loginButton.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
  }
  
  @objc private func tappedDontHaveAccountButton() {
    self.navigationController?.popViewController(animated: true)
  }
  
  @objc private func tappedLoginButton() {
    guard let email = emailTextField.text else { return }
    guard let password = passwordTextField.text else { return }
    
    Auth.auth().signIn(withEmail: email, password: password) { (res, err) in
      if let err = err {
          print("ログインに失敗しました。\(err)")
        return
      }
      
      print("ログインに成功しました。")
      let nav = self.presentingViewController as! UINavigationController
      let chatListViewController = nav.viewControllers[nav.viewControllers.count-1] as? ChatListViewController
      chatListViewController?.fetchChatroomsInfoFromFirestore()
      
      self.dismiss(animated: true, completion: nil)
    }
  }
  
}
