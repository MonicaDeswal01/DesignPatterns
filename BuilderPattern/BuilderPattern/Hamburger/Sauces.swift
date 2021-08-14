//
//  Sauces.swift
//  BuilderPattern
//
//  Created by Monica Mishipay on 13/08/21.
//

import Foundation

public struct Sauces: OptionSet {
    public let rawValue: Int

    public static let mayonnaise = Sauces(rawValue: 1 << 0)
    public static let mustard = Sauces(rawValue: 1 << 1)
    public static let ketchup = Sauces(rawValue: 1 << 2)
    public static let barbeque = Sauces(rawValue: 1 << 3)

    public init(rawValue: Int) {
        self.rawValue = rawValue
    }
}

extension Sauces: CustomStringConvertible {


    static public var debugDescription: [(Self, String)] = [
        (.mayonnaise, "mayonnaise"),
        (.mustard, "mustard"),
        (.ketchup, "ketchup"),
        (.barbeque, "barbeque")
]

    public var description: String {
        let result: [String] = Self.debugDescription.filter { contains($0.0) }.map {$0.1}
        let printable = result.joined(separator: ", ")
        return "\(printable)"
    }
}
