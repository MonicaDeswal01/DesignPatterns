//
//  ViewController.swift
//  ProtocolPattern
//
//  Created by Monica Mishipay on 14/08/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      let raidLeader = Card(name: "Raid leader", mana: 3, attack: 2, defense: 2)
        print("the value of the raid leader \(raidLeader.name) \(raidLeader.attack) ")
      let facelessManipulator = raidLeader.clone()
        facelessManipulator.attack = 5
        print("the value of the raid leader \(facelessManipulator.name) \(facelessManipulator.attack) ")
    }


}


class TheOneSingeltonObject {
    static let object = TheOneSingeltonObject()
    private init() {}
}
