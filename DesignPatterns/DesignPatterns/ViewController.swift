//
//  ViewController.swift
//  DesignPatterns
//
//  Created by Monica Mishipay on 27/07/21.
//

import UIKit

class ViewController: UIViewController {

    let designPatternsArray = [
        "Solid Design Principles",
        "Builder",
        "Factories",
        "Prototype",
        "Singelton",
        "Adapter",
        "Bridge",
        "Composite",
        "Decorator",
        "Facade",
        "Flyweight",
        "Proxy",
        "Chain of Responsibilty",
        "Command",
        "Interpreter",
        "Iterator",
        "Mediator",
        "Memento",
        "Null Object",
        "Observer",
        "state",
        "Strategy",
        "Template Method",
        "Visitor"
    ]

    let viewModel = ViewModel()

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return designPatternsArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "The pattern: \(designPatternsArray[indexPath.row].capitalized)"
        cell.textLabel?.textColor = .white
        cell.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel.redirectToSolidPrinciple(navController: self)
    }

}
