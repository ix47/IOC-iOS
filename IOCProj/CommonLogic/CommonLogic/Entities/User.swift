//
//  User.swift
//  CommonLogic
//
//  Created by Hashim Akhtar on 13/08/2021.
//

import Foundation

public class User {
    
    public enum UserPermissions {
        case View
        case Create
        case Edit
        case Delete
        case SignUp
    }
    
    public var id: Int64
    public var firstName: String
    public var lastName: String
    public var email: String
    public var password: String
    public var joinDate: Date
    public var lastActive: Date
    public var profilePicPath: String
    private var permissions: [UserPermissions]
    
    public func getPermissions() -> [UserPermissions] {
        return permissions
    }

    public init(id: Int64, firstName: String, lastName: String, email: String, password: String, joinDate: Date, lastActive: Date, profilePicPath: String, permissions: [UserPermissions]) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
        self.joinDate = joinDate
        self.lastActive = lastActive
        self.profilePicPath = profilePicPath
        self.permissions = permissions
    }
    
}
