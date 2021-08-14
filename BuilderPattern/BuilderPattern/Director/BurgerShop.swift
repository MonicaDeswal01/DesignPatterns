//
//  BurgerShop.swift
//  BuilderPattern
//
//  Created by Monica Mishipay on 13/08/21.
//

import Foundation

public class BurgerShop {

    public func createCheeseBurger(using builder: HamburgerBuilder) -> Hamburger {
        builder.setMeat(.beef)
        builder.addToppings([.cheese, .lettuce, .tomotoes])
        builder.addSauces([.barbeque, .ketchup, .mayonnaise])
        return builder.build()
    }

    public func createVegetarianBurger(using builder: HamburgerBuilder) -> Hamburger {
        builder.setMeat(.tofu)
        builder.addSauces([.mayonnaise, .mustard])
        builder.addToppings([.lettuce, .tomotoes, .pickles])
        return builder.build()
    }

}
