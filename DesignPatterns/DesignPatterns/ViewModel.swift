//
//  ViewModel.swift
//  DesignPatterns
//
//  Created by Monica Mishipay on 27/07/21.
//

import UIKit

struct ViewModel {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    
    func redirectToSolidPrinciple(navController: ViewController) {
        let viewController = storyboard.instantiateViewController(withIdentifier: "SolidPrinciplesViewController")
        navController.navigationController?.pushViewController(viewController, animated: true)

    }

    func redirectToBuilderPrinciple(navController: ViewController) {
        let viewController = storyboard.instantiateViewController(withIdentifier: "BuildPatternViewController")
        navController.navigationController?.pushViewController(viewController, animated: true)

    }
}
