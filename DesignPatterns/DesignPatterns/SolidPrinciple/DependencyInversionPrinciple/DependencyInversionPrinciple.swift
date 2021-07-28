//
//  DependencyInversionPrinciple.swift
//  DesignPatterns
//
//  Created by Monica Mishipay on 28/07/21.
//

import Foundation

enum Relationship {
    case parent
    case child
    case sibling
}

class Person {
    var name = ""
    //dob, etc

    init(_ name: String) {
        self.name = name
    }
}

protocol RelationshipBrowser {
    func findAllChildrenOg(_ name: String) -> [Person]
}

class Relationships: RelationshipBrowser {
    var relations = [(Person, Relationship, Person)]()

    func addParentAndChild(_ p: Person, _ c: Person) {
        relations.append((p, Relationship.parent, c))
        relations.append((c, Relationship.child, p))
    }

    func findAllChildrenOg(_ name: String) -> [Person] {
        return relations.filter({$0.name == name && $1 == Relationship.parent && $2 != nil})
                            .map({$2})
    }
}

class Research {
    //Bad practise: High level: find all of job's children
    init(_ relationships: Relationships) {
        let relations = relationships.relations

        for r in relations where r.0.name == "John" && r.1 == Relationship.parent {
            print("John has a child called \(r.2.name)")
        }
    }

    //Good prcatise
    init(_ browser: RelationshipBrowser, parentName: String) {
        for p in browser.findAllChildrenOg("\(parentName)") {
            print("John has a child called \(p.name)")
        }
    }
}

class DependencyInversionPrinciple {
    static func implementTheLogic() {
        let parent = Person("John")
        let child1 = Person("Chris")
        let child2 = Person("Matt")

        let relationships = Relationships()
        relationships.addParentAndChild(parent, child1)
        relationships.addParentAndChild(parent, child2)

        let _ = Research(relationships, parentName: "John")

        print("check the conditions here only")
        let _ = Research(relationships)
    }
}
