//
//  OpenClosePrinciplePart2.swift
//  DesignPatterns
//
//  Created by Monica Mishipay on 28/07/21.
//

import UIKit

//Model Data
struct CellModel {

}

enum ListDataType: String {
    case product = "product"
    case ad = "ad"
    case suggetion = "suggestion"

}


class SectionContainer {
    var sectionHandlers: [String: SectionHandler] = [:]
    init(handlers: [SectionHandler]) {
        handlers.forEach { handler in
            sectionHandlers[handler.type] = handler
        }
    }
}

class ListViewController: UITableViewController {
    let data: [CellModel] = []
    let sectionContainer: SectionContainer
    init(sectionContainer: SectionContainer) {
        self.sectionContainer = sectionContainer
        super.init(style: .plain)
    }


    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cellModel = data[indexPath.row]
////        return sectionContainer.tableView(cellModel, tableView(<#T##tableView: UITableView##UITableView#>, cellForRowAt: <#T##IndexPath#>))
//    }
}
