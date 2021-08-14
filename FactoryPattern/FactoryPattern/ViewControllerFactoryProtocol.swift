//
//  ViewControllerFactoryProtocol.swift
//  FactoryPattern
//
//  Created by Monica Mishipay on 14/08/21.
//

import UIKit

protocol ViewControllerFactoryProtocol {
    func createInfoViewControoerWith(item: String) -> UIViewController
}
