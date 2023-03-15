//
//  User.swift
//  NETFLIX2
//
//  Created by ifts 25 on 12/02/23.
//

import Foundation

class User {
    var name: String
    var email: String
    var password: String
    
    init(name: String, email: String, password: String) {
        self.name = name
        self.email = email
        self.password = password
    }
}
