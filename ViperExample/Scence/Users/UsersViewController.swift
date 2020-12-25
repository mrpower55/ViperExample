//
//  UsersViewController.swift
//  ViperExample
//
//  Created by Mahmoud Shurrab on 25/12/2020.
//

import UIKit

class UsersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UsersViewProtocol {
    var presenter: UsersPresenterProtocol!
    
    @IBOutlet weak var userTableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        presenter.viewDidLoad()
    }
    
    private func setupTableView() {
        userTableView.dataSource = self
        userTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.numberOfRows
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath) as! UserCell
        presenter.configure(cell: cell, indexPath: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.displayUserScreenWith(indexPath: indexPath)
    }
    
    func showLoadingIndicator() {
        print("showLoadingIndicator")
    }
    
    func hideLoadingIndicator() {
        print("hideLoadingIndicator")
    }
    
    func reloadData() {
        self.userTableView.reloadData()
    }
}

