//
//  UserProvider.swift
//  UserProvider
//
//  Created by Hashim Akhtar on 13/08/2021.
//

import Foundation
import CommonLogic

public class UserProvider: SystemUsersProvider {
   
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
            User(id: 1, firstName: "John", lastName: "Doe", email: "john.doe@ix47.com", password: "1234", joinDate: formatter.date(from: "2016/10/08 22:31")!, lastActive: formatter.date(from: "2021/07/08 09:32")!, profilePicPath: "Pic1", permissions: [.View, .Edit]),
            User(id: 2, firstName: "Jane", lastName: "Doe", email: "jane.doe@ix47.com", password: "1234", joinDate: formatter.date(from: "2017/05/20 09:11")!, lastActive: formatter.date(from: "2021/08/09 10:03")!, profilePicPath: "Pic2", permissions: [.View, .Edit]),
            User(id: 3, firstName: "Pizza", lastName: "Doe", email: "pizza.doe@ix47.com", password: "1234", joinDate: formatter.date(from: "2020/10/08 11:36")!, lastActive: formatter.date(from: "2021/08/12 15:58")!, profilePicPath: "Pic3", permissions: [.View, .Edit])
        ]
    }
    
}
