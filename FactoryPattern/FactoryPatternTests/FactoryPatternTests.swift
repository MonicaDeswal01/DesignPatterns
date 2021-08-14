//
//  FactoryPatternTests.swift
//  FactoryPatternTests
//
//  Created by Monica Mishipay on 14/08/21.
//

import XCTest
@testable import FactoryPattern

class FactoryPatternTests: XCTestCase {



    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let mockFactory = MockFactory()
        let viewController = ViewController()
        viewController.item = ""
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
