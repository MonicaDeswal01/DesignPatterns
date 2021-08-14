//
//  HamburgerBuilder.swift
//  BuilderPattern
//
//  Created by Monica Mishipay on 13/08/21.
//

import Foundation

public class HamburgerBuilder {
    public private(set) var meat: Meat = .beef
    public private(set) var sauces: Sauces = []
    public private(set) var toppings: Toppings = []

    public func addSauces(_ sauce: Sauces) {
        sauces.insert(sauce)
    }

    public func removeSauce(_ sauce: Sauces) {
        sauces.remove(sauce)
    }

    public func addToppings(_ topppings: Toppings) {
        toppings.insert(toppings)
    }

    public func removeToppings(_ topping: Toppings) {
        toppings.remove(toppings)
    }

    public func setMeat(_ meat: Meat) {
        self.meat = meat
    }

    public func build() -> Hamburger {
        return Hamburger(meat: meat,
                         sauce: sauces,
                         toppings: toppings)
    }
}
