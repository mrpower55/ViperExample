//
//  UsersProtocol.swift
//  ViperExample
//
//  Created by Mahmoud Shurrab on 25/12/2020.
//

import Foundation

protocol UsersViewProtocol: class {
    var presenter: UsersPresenterProtocol! { get set }
    func showLoadingIndicator()
    func hideLoadingIndicator()
    func reloadData()
}

protocol UsersPresenterProtocol: class {
    var view: UsersViewProtocol? { get set }
    var numberOfRows: Int { get }
    func viewDidLoad()
    func configure(cell: UsersCellView, indexPath: IndexPath)
    func displayUserScreenWith(indexPath: IndexPath)
}

protocol UsersRouterProtocol {
    func displayUserScreen(user: User)
}

protocol UsersInteractorInputProtocol {
    var presenter: UsersInteractorOutputProtocol? { get set }
    func getUsers()
}

protocol UsersInteractorOutputProtocol: class {
    func usersFetchedSuccessfully(response: UserResponse)
    func usersFetchingFailed(withError error: Error)
}

protocol UsersCellView {
    func configure(viewModel: UserViewModel)
}
