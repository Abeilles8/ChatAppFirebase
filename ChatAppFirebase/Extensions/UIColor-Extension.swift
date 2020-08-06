//
//  UIColor-Extension.swift
//  ChatAppFirebase
//
//  Created by Yuta Uematsu on 2020/05/07.
//  Copyright © 2020 Yuta Uematsu. All rights reserved.
//

import UIKit

extension UIColor {
  
  static func rgb(red:CGFloat, green: CGFloat,blue: CGFloat) -> UIColor {
    return self.init(red: red / 255, green: green / 255, blue: blue / 255, alpha: 1)
    
  }
  
}
