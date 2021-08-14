//
//  ViewControllerFactory.swift
//  FactoryPattern
//
//  Created by Monica Mishipay on 14/08/21.
//

import UIKit

class ViewControllerFactory: ViewControllerFactoryProtocol {
    let storybpard: UIStoryboard
    func createInfoViewControoerWith(item: String) -> UIViewController {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "ViewController") as! ViewController
        vc.item = "item"
        return vc
    }

    init(storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)) {
        self.storybpard = storyboard
    }




}
