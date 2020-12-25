//
//  User.swift
//  ViperExample
//
//  Created by Mahmoud Shurrab on 25/12/2020.
//

import Foundation


class UserResponse: Codable {
    var status: Bool?
    var users: [User]?
}

class User: Codable {
    var id: Int?
    var firstname: String?
    var lastname: String?
    var gendar: String?
    var birthdate: String?
}

struct UserViewModel {
    var fullName: String
    var gendar: String
    var birthDate: String
    
    init(user: User){
        fullName = (user.firstname ?? "") + " " + (user.lastname ?? "")
        gendar = "Gendar: "+(user.gendar ?? "")
        birthDate = "Birth Of Date: "+(user.birthdate ?? "")
    }
}
