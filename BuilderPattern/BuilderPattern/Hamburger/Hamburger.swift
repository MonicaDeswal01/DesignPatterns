//
//  Hamburger.swift
//  BuilderPattern
//
//  Created by Monica Mishipay on 13/08/21.
//

import Foundation

public struct Hamburger {
    public let meat: Meat
    public let sauce: Sauces
    public let toppings: Toppings
}

extension Hamburger: CustomStringConvertible {
    public var description: String {
        return "Here is your burger. It has \(meat.rawValue); \(sauce.description) as sauces; and \(toppings.description) as toppiing in it. Bon Appetit."
    }
}
