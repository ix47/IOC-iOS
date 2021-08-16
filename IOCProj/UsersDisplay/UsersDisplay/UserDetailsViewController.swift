//
//  UserDetailsViewController.swift
//  UsersDisplay
//
//  Created by Hashim Akhtar on 13/08/2021.
//

import UIKit
import CommonLogic

class UserDetailsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView?
    
    public var dataProvider: SystemUsersProvider? = nil
    
    var userList: [User] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView?.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        userList = dataProvider!.getUsers()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.userList.count;
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = (self.tableView?.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell()) as UITableViewCell

        cell.textLabel?.text = self.userList[indexPath.row].firstName + " " + self.userList[indexPath.row].lastName
        
        cell.detailTextLabel?.text = self.userList[indexPath.row].email

        return cell
    }

    private func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //
    }
    
    @IBAction func doneClicked(sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
