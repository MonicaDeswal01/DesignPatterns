//
//  MockFactory.swift
//  FactoryPatternTests
//
//  Created by Monica Mishipay on 14/08/21.
//

import UIKit
@testable import FactoryPattern

class MockFactory: ViewControllerFactoryProtocol {
    var didCreateInfo = false

    func createInfoViewControoerWith(item: String) -> UIViewController {
        didCreateInfo = true
        return UIViewController()
    }
}
