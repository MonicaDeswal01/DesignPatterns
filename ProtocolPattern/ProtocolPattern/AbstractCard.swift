//
//  AbstractCard.swift
//  ProtocolPattern
//
//  Created by Monica Mishipay on 14/08/21.
//

import Foundation

class AbstractCard {
    var name: String?
    var mana: Int?
    var attack: Int?
    var defense: Int?

    init(name: String?, mana: Int?, attack: Int?, defense: Int?) {
        self.name = name
        self.attack = attack
        self.mana = mana
        self.defense = defense
    }

    func clone() -> AbstractCard {
        return AbstractCard(name: self.name,
                            mana: self.mana,
                            attack: self.attack,
                            defense: self.defense)
    }
}

class Card: AbstractCard {
    override init(name: String?, mana: Int?, attack: Int?, defense: Int?) {
        super.init(name: name, mana: mana, attack: attack, defense: defense)
    }
}

