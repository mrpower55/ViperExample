//
//  UsersWorker.swift
//  ViperExample
//
//  Created by Mahmoud Shurrab on 25/12/2020.
//

import Foundation

class UsersWorker {
    private let networkLayer = NetworkLayer()
    
    func getUsers(completionHandler: @escaping (Result<UserResponse>) -> ()) {
        networkLayer.request(UserRouter.get, decodeToType: UserResponse.self, completionHandler: completionHandler)
    }
}
