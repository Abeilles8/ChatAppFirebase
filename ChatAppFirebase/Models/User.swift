//
//  User.swift
//  ChatAppFirebase
//
//  Created by 植松佑太 on 2020/05/12.
//  Copyright © 2020 植松佑太. All rights reserved.
//

import Foundation
import Firebase

class User {
  
  let email: String
  let username: String
  let createdAt: Timestamp
  let profileImageUrl: String
  
  var uid: String?
  
  init(dic: [String: Any]) {
    self.email = dic["email"] as? String ?? ""
    self.username = dic["username"] as? String ?? ""
    self.createdAt = dic["createdAt"] as? Timestamp ?? Timestamp()
    self.profileImageUrl = dic["profileImageUrl"] as? String ?? ""
  }
  
  
}
