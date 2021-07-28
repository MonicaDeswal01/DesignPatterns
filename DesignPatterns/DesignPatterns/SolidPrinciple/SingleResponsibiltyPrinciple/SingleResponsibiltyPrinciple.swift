//
//  SingleResponsibiltyPrinciple.swift
//  DesignPatterns
//
//  Created by Monica Mishipay on 27/07/21.
//

import Foundation

// All the file related operations are performed in this class
class Journal: CustomStringConvertible {
    var entities = [String]()
    var count = 0

    var description: String {
        entities.joined(separator: "\n")
    }

    func addEntry(_ text: String) -> Int {
        count += 1
        entities.append("\(count) : \(text)")
        return count - 1
    }

    func removeEntry(_ index: Int) {
        entities.remove(at: index)
    }

    func save(_ filename: String, _ overwrite: Bool = false) {
      // save to a file
    }

    func load(_ filename: String) { }
    func load(_ uri: URL) {}
}

// Storage related are handled in this class. As we can change the storage methods
class Persistence {
    func saveToFile(_ journal: Journal, _ fileName: String, _ overwrite: Bool = false) {

    }
}

class  SingleResponsibiltyPrinciple {
    static func implementTheLogic() {
        let journal = Journal()
        let _ = journal.addEntry("Adding the first Entry")
        let addEntry2 = journal.addEntry("Adding the secondEntry Entry")

        print("the value of journal \(journal) \(journal.count)")

        //remove the entry
        journal.removeEntry(addEntry2)

        let persistence = Persistence()
        let fileName = "/hey/HelloWorld"
        persistence.saveToFile(journal, fileName, false)
    }
}
