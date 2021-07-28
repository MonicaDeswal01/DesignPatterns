//
//  SolidPrinciplesViewController.swift
//  DesignPatterns
//
//  Created by Monica Mishipay on 27/07/21.
//

import UIKit

class SolidPrinciplesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


        // Do any additional setup after loading the view.
    }


    @IBAction func singleResponsibiltyPrinciple(_ sender: Any) {
        SingleResponsibiltyPrinciple.implementTheLogic()
    }


    @IBAction func openClosePrinciple(_ sender: Any) {
        OpenClosePrinciple.implementTheLogic()
    }

    @IBAction func liskovSubstitutionPrinciple(_ sender: Any) {
        LiskovSubstitutionPrinciple.implementTheLogic()
    }


    @IBAction func interfaceSegregationPrinciple(_ sender: Any) {
        InterfaceSegregationPrinciple.implementTheLogic()
    }

    @IBAction func dependencyInversionPrinciple(_ sender: Any) {
        DependencyInversionPrinciple.implementTheLogic()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
