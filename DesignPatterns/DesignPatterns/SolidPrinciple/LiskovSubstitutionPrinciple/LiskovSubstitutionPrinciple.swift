//
//  LiskovSubstitutionPrinciple.swift
//  DesignPatterns
//
//  Created by Monica Mishipay on 28/07/21.
//

import Foundation

class Rectangle: CustomStringConvertible {
    internal var _width: Int = 0
    internal var _height: Int = 0

    var width: Int {
        get {
            return _width
        }
        set(value) {
            _width = value
        }
    }

    var height: Int {
        get {
            return _height
        }
        set(value) {
            _height = height
        }
    }

    init(_ width: Int, _ height: Int) {
        self.width = width
        self.height = height
    }

    public var description: String {
        return "Width: \(width), height: \(height)"
    }
}

class Square: Rectangle {
    override var height: Int {
        get {
            return _height
        }
        set(value) {
            _width = width
            _height = height
        }
    }

    override var width: Int {
        get {
            return _width
        }
        set(value) {
            _width = value
            _height = value
        }
    }
}

class LiskovSubstitutionPrinciple {

    func area(_ r: Rectangle) -> Int {
        return r.width * r.height
    }

    func areaCreation() {
        let rc = Rectangle(2, 3)
        print("\(rc) has area \(self.area(rc))")

        //Should be able to substitute a base type for a subtype
        let sq: Rectangle = Square(0, 0)
        sq.width = 4
        print("\(sq) has area \(area(sq))")

    }

    static func implementTheLogic() {
        let subObject = LiskovSubstitutionPrinciple()
        subObject.areaCreation()
    }
}
