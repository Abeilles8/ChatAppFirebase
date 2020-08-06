//
//  ChatRoom.swift
//  ChatAppFirebase
//
//  Created by Yuta Uematsu on 2020/05/15.
//  Copyright © 2020 Yuta Uematsu. All rights reserved.
//

import Foundation
import Firebase

class ChatRoom {
  
  let latestMessageId: String
  let memebers: [String]?
  let createdAt: Timestamp
  
  var latestMessage: Message?
  var documentId: String?
  var partnerUser: User?
  
  init(dic: [String: Any]) {
    self.latestMessageId = dic["latestMessageId"] as? String ?? ""
    self.memebers = dic["memebers"] as? [String] ?? [String]()
    self.createdAt = dic["createdAt"] as? Timestamp ?? Timestamp()
    
  }
  
}
