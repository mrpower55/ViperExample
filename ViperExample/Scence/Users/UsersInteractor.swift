//
//  UsersInteractor.swift
//  ViperExample
//
//  Created by Mahmoud Shurrab on 25/12/2020.
//

import Foundation

class UsersInteractor: UsersInteractorInputProtocol {
    weak var presenter: UsersInteractorOutputProtocol?
    
    private let usersWorker = UsersWorker()
    
    func getUsers() {
        usersWorker.getUsers{ [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let usersResponse):
                self.presenter?.usersFetchedSuccessfully(response: usersResponse)
            case .failure(let error):
                self.presenter?.usersFetchingFailed(withError: error)
            }
        }
    }
}
