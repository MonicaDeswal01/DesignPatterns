//
//  DependencyInversionPrinciplePart2.swift
//  DesignPatterns
//
//  Created by Monica Mishipay on 28/07/21.
//

import Foundation

protocol Database {
    func saveToDatabase(conversations: [Any])
}

class ConventionDataController {
    let database: Database

    init(inDatabase: Database) {
        self.database = inDatabase
    }

    func getAllConversations() {
        let conversations = [Any]()

        database.saveToDatabase(conversations: conversations)
    }
}

class CoreDataController: Database {
    func saveToDatabase(conversations: [Any]) {
        
    }
}
