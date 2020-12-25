//
//  UsersPresenter.swift
//  ViperExample
//
//  Created by Mahmoud Shurrab on 25/12/2020.
//

import Foundation

class UserPresenter: UsersPresenterProtocol, UsersInteractorOutputProtocol {
    weak var view: UsersViewProtocol?
    private let interactor: UsersInteractorInputProtocol
    private let router: UsersRouterProtocol
    private var users = [User]()
    
    var numberOfRows: Int {
        return users.count
    }
    
    init(view: UsersViewProtocol, interactor: UsersInteractorInputProtocol, router: UsersRouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    
    func viewDidLoad() {
        view?.showLoadingIndicator()
        interactor.getUsers()
    }
    
    func usersFetchedSuccessfully(response: UserResponse) {
        view?.hideLoadingIndicator()
        self.users = response.users ?? []
        view?.reloadData()
    }
    
    func usersFetchingFailed(withError error: Error) {
        view?.hideLoadingIndicator()
        print("usersFetchingFailed: ",error.localizedDescription)
    }
    
    func configure(cell: UsersCellView, indexPath: IndexPath){
        let user = users[indexPath.row]
        let viewModel = UserViewModel(user: user)
        cell.configure(viewModel: viewModel)
    }
    
    func displayUserScreenWith(indexPath: IndexPath){
        let user = users[indexPath.row]
        router.displayUserScreen(user: user)
    }
}
