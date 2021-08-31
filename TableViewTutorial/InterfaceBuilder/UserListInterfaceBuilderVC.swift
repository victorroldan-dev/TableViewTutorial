//
//  UserListInterfaceBuilderVC.swift
//  TableViewTutorial
//
//  Created by Victor Roldan on 28/08/21.
//

import UIKit

class UserListInterfaceBuilderVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    func configureTableView(){
        let nibName = UINib(nibName: "\(UserListCell.self)", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "\(UserListCell.self)")
        
        let nibNameHeader = UINib(nibName: "\(HeaderIBCell.self)", bundle: nil)
        tableView.register(nibNameHeader, forHeaderFooterViewReuseIdentifier: "\(HeaderIBCell.self)")
        
        tableView.reloadData()
    }

}

extension UserListInterfaceBuilderVC : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return UserModel.getList().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(UserListCell.self)", for: indexPath) as? UserListCell else{
            return UITableViewCell()
        }
        let user = UserModel.getList()[indexPath.row]
        cell.setData(user)
        cell.accessoryType = .detailButton
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let cell = tableView.dequeueReusableHeaderFooterView(withIdentifier: "\(HeaderIBCell.self)") as? HeaderIBCell else{
            return UITableViewHeaderFooterView()
        }
        cell.setData(title: "User List - Interface Builder")
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
}
