//
//  ViewController.swift
//  BuilderPattern
//
//  Created by Monica Mishipay on 13/08/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.createTheDefaultBurger()

        print("====================")
        self.createTheBurgerUsingUserInput()
    }




}

extension ViewController
{
    //MARK:- Create the Hambumber with the default
    func createTheDefaultBurger() {
        let burgerShop = BurgerShop()
        let builder = HamburgerBuilder()
        let cheeseBurger = burgerShop.createCheeseBurger(using: builder)
        print(cheeseBurger.description)

        let vegetarianBurger = burgerShop.createVegetarianBurger(using: builder)
        print(vegetarianBurger.description)
    }

    //MARK:- Provding the customer input
    func createTheBurgerUsingUserInput() {
        let myCustomBurgerBuilder = HamburgerBuilder()

        myCustomBurgerBuilder.setMeat(.chicken)
        myCustomBurgerBuilder.addSauces([.mayonnaise, .ketchup, .barbeque, .mustard])
        myCustomBurgerBuilder.addToppings([.cheese, .lettuce, .onion, .pickles])
        // I don't want mustard
        myCustomBurgerBuilder.removeSauce(.mustard)
        // I don't want onion
        myCustomBurgerBuilder.removeToppings(.onion)
        //I forgot tomatoes
        myCustomBurgerBuilder.addToppings(.tomotoes)

        let myCustomBurger = myCustomBurgerBuilder.build()
        print(myCustomBurger.description)
    }
}
