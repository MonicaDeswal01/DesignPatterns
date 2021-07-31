//
//  BuildPatternImplementation.swift
//  DesignPatterns
//
//  Created by Monica Mishipay on 28/07/21.
//

import Foundation

class HtmlElement: CustomStringConvertible {
    var name = ""
    var text = ""
    var elements = [HtmlElement]()
    private let indentSize = 2

    init() { }
    init(name: String, text: String) {
        self.name = name
        self.text = text
    }

    public var description: String
    {
        return description(0)
    }

    private func description(_ indent: Int) -> String {
        var result = ""
        let i = String(repeating: " ", count: indent)
        result += "\(i)<\(name)>\n"

        if (!text.isEmpty)
        {
            result += String(repeating: " ",
                             count: indentSize * (indent + 1))
            result += text
            result += "\n"
        }

        for e in elements {
            print(" check for the value of the elements \(elements)")
            result += e.description(indent + 1)
        }
        result += "\(i)</\(name)>\n"
        return result
    }
}

class HtmlBuilder: CustomStringConvertible {
    private let rootName: String
    var root = HtmlElement()

    init(rootName: String) {
        self.rootName = rootName
        root.name = rootName
    }

    func addChild( name: String,
                   text: String) {
        let e = HtmlElement(name: name, text: text)
        root.elements.append(e)
    }

    func addChildFluent(childName: String,
                        childText: String)  -> HtmlBuilder{
        let e = HtmlElement(name: childName, text: childText)
        root.elements.append(e)
        return self
    }

    public var description: String {
        return root.description
    }

    func clear() {
        root = HtmlElement(name: rootName, text: "")
    }
}

class BuilderPatternImplementation {
    static func implementTheLogic() {
        let hello = "hello"
        var result = "<p>\(hello)</p>"
        print(result)

        let words = ["hello","world"]
        result = "<ul>"
        for word in words {
            result.append("<li>\(word)</li>")
        }
        result.append("</ul>")
       // print(result)


        print("With the help og builder files")

        let builder = HtmlBuilder(rootName: "ul")
        builder.addChild(name: "li", text: "hello")
        builder.addChild(name: "li", text: "world")
        print(builder)

    }


}
