//
//  InterfaceSegregationPrinciple.swift
//  DesignPatterns
//
//  Created by Monica Mishipay on 28/07/21.
//

import Foundation

protocol Printer {
    func print(d: Document)
}

protocol Scanner {
    func scan(d: Document)
}

protocol Fax {
    func fax(d: Document)
}

class Document {

}

class OrdinaryPrinter: Printer {
    func print(d: Document) {

    }
}

class PhotoCopier: Printer, Scanner {
    func print(d: Document) {

    }

    func scan(d: Document) {

    }
}

//If we want to access all the protocal then create a single protocol where we inherit all the protocol
protocol MultiFunctionDevice: Printer, Scanner, Fax {
}

// We can directly inherit with the help of protocols
class MultifunctionMachine: MultiFunctionDevice {
    func print(d: Document) {

    }

    func scan(d: Document) {

    }

    func fax(d: Document) {

    }
}

// We can pass the protocols in the initialistion
class MultiFunctionMachineProtocolType {

    let printer: Printer
    let scanner: Scanner

    init(printer: Printer, scanner: Scanner) {
        self.printer = printer
        self.scanner = scanner
    }

    func print(d: Document) {
        printer.print(d: d)
    }
}

class InterfaceSegregationPrinciple {
    static func implementTheLogic() {
        let multiFunctionMachineProtocolType = MultiFunctionMachineProtocolType(printer: Printer.self as! Printer , scanner: Scanner.self as! Scanner)
        multiFunctionMachineProtocolType.print(d: Document())

    }
}
