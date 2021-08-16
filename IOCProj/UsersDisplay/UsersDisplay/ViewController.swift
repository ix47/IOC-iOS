//
//  ViewController.swift
//  UsersDisplay
//
//  Created by Hashim Akhtar on 12/08/2021.
//

import UIKit
import UserProvider
import AdminProvider

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func regularUsersClicked(sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let userDetailsViewController = storyBoard.instantiateViewController(withIdentifier: "UserDetailsStory") as! UserDetailsViewController
        let provider: UserProvider = UserProvider()
        userDetailsViewController.dataProvider = provider
        self.present(userDetailsViewController, animated: true, completion: nil)
    }
    
    @IBAction func adminUsersClicked(sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let userDetailsViewController = storyBoard.instantiateViewController(withIdentifier: "UserDetailsStory") as! UserDetailsViewController
        let provider: AdminProvider = AdminProvider()
        userDetailsViewController.dataProvider = provider
        self.present(userDetailsViewController, animated: true, completion: nil)
    }

}

