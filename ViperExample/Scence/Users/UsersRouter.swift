//
//  UsersRouter.swift
//  ViperExample
//
//  Created by Mahmoud Shurrab on 25/12/2020.
//

import UIKit

class UsersRouter: UsersRouterProtocol {
    
    weak var viewController: UIViewController?
    
    static func createModule() -> UIViewController {
        let view = UIStoryboard(name: "Users", bundle: nil).instantiateViewController(withIdentifier: "\(UsersViewController.self)") as! UsersViewController
        let interactor = UsersInteractor()
        let router = UsersRouter()
        let presenter = UserPresenter(view: view, interactor: interactor, router: router)
        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view 
        return view
    }
    
    func displayUserScreen(user: User){
        print("goToUserDetailsScreenWithData: ",user)
    }
}
