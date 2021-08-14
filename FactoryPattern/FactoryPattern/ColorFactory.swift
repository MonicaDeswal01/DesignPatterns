//
//  ColorFactory.swift
//  FactoryPattern
//
//  Created by Monica Mishipay on 14/08/21.
//

import UIKit

class ColorFactory {

    enum Style {
        case text
        case background
    }

    func create(_ style: Style) -> UIColor {
        switch  style {
        case .text:
            return .black
        default:
            return .white
        }
    }
}
