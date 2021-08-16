//
//  AdminProvider.swift
//  AdminProvider
//
//  Created by Hashim Akhtar on 13/08/2021.
//

import Foundation
import CommonLogic

public class AdminProvider: SystemUsersProvider {
   
    public init(){}
    
    public func getUsers() -> [User] {
        return fetchDummyUsers()
    }
    
    public func getUser(id: Int64) -> User? {
        return fetchDummyUsers().first(where: { $0.id == id } )
    }
    
    func fetchUsersFromDatabase(connectionString: String) -> [User] {
        return [User]()
    }
    
    func fetchUsersViaAPI(url: String) -> [User] {
        return [User]()
    }
    
    func fetchDummyUsers() -> [User] {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd HH:mm"

        return [
            User(id: 1, firstName: "Kevin", lastName: "Smith", email: "kevin.smith@ix47.com", password: "1234", joinDate: formatter.date(from: "2014/10/08 22:31")!, lastActive: formatter.date(from: "2021/07/08 09:32")!, profilePicPath: "AdminPic1", permissions: [.View, .Create, .Edit, .Delete, .SignUp]),
            User(id: 2, firstName: "Stuart", lastName: "Smith", email: "stuart.smith@ix47.com", password: "1234", joinDate: formatter.date(from: "2015/05/20 09:11")!, lastActive: formatter.date(from: "2021/08/09 10:03")!, profilePicPath: "AdminPic2", permissions: [.View, .Create, .Edit, .Delete, .SignUp]),
            User(id: 3, firstName: "Bob", lastName: "Smith", email: "bob.smith@ix47.com", password: "1234", joinDate: formatter.date(from: "207/01/08 11:36")!, lastActive: formatter.date(from: "2021/08/12 15:58")!, profilePicPath: "AdminPic3", permissions: [.View, .Create, .Edit, .Delete, .SignUp])
        ]
    }
    
}
