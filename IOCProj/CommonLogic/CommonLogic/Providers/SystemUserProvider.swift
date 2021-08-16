//
//  SystemUsersInterface.swift
//  CommonLogic
//
//  Created by Hashim Akhtar on 13/08/2021.
//

import Foundation

public protocol SystemUsersProvider {
    
    func getUsers() -> [User]
    
    func getUser(id: Int64) -> User?
}
