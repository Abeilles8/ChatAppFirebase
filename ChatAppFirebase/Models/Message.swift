//
//  Message.swift
//  ChatAppFirebase
//
//  Created by 植松佑太 on 2020/05/16.
//  Copyright © 2020 植松佑太. All rights reserved.
//

import Foundation
import Firebase

class Message {
  
  let name: String
  let message: String
  let uid: String
  let createdAt: Timestamp
  
  var partnerUser: User?
  
  
  
  init(dic: [String: Any]) {
    self.name = dic["name"] as? String ?? ""
    self.message = dic["message"] as? String ?? ""
    self.uid = dic["uid"] as? String ?? ""
    self.createdAt = dic["createdAt"] as? Timestamp ?? Timestamp()
  }
  
}
