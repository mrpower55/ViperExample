//
//  UserCell.swift
//  ViperExample
//
//  Created by Mahmoud Shurrab on 25/12/2020.
//

import UIKit

class UserCell: UITableViewCell, UsersCellView {
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var gendar: UILabel!
    @IBOutlet weak var birthDate: UILabel!
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(viewModel: UserViewModel) {
        userName.text = viewModel.fullName
        gendar.text = viewModel.gendar
        birthDate.text = viewModel.birthDate
    }
}
