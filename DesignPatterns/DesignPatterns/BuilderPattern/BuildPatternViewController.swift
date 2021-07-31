//
//  BuildPatternViewController.swift
//  DesignPatterns
//
//  Created by Monica Mishipay on 28/07/21.
//

import UIKit

class BuildPatternViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        BuilderPatternImplementation.implementTheLogic()

        // Do any additional setup after loading the view.
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
