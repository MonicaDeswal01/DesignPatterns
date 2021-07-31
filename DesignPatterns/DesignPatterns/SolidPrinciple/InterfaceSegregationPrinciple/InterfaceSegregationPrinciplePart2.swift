//
//  InterfaceSegregationPrinciplePart2.swift
//  DesignPatterns
//
//  Created by Monica Mishipay on 28/07/21.
//

import Foundation

protocol UserProfileViewDetails {
    var profileImageURL: String { get }
}

class USser: UserProfileViewDetails {
    var firstName: String
    var lastName: String
    var bio: String
    var dateOfBirth: Date
    internal var profileImageURL: String

    init(firstName: String,
    lastName: String,
    bio: String,
    dateOfBirth: Date,
    profileImageURL: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.bio = bio
        self.dateOfBirth = dateOfBirth
        self.profileImageURL = profileImageURL
    }
}

class UserProfileImageView {
    func loadProfileFor(user: UserProfileViewDetails){
        
    }
}
