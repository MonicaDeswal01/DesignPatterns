//
//  OpenClosePrinciplePart2Protocol.swift
//  DesignPatterns
//
//  Created by Monica Mishipay on 28/07/21.
//

import UIKit

protocol SectionHandler {
    var type: String { get }
    func tableView(_ celModel: CellModel,
                   _ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell
}

class ProductSectionHandler: SectionHandler {
    var type: String {
        return ListDataType.product.rawValue
    }

    func tableView(_ celModel: CellModel, _ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let productCell = tableView.dequeueReusableCell(withIdentifier: "ProductCell") as? ProductCell else {
            return UITableViewCell()
        }
        // productCell.cellModel = cellModel
        return productCell
    }
}

class AdSectionHandler: SectionHandler {
    var type: String {
        return ListDataType.ad.rawValue
    }

    func tableView(_ celModel: CellModel, _ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let adCell = tableView.dequeueReusableCell(withIdentifier: "AddCell") else {
            return UITableViewCell()
        }
        //adCell.cellModel = cellModel
        return adCell
    }
}

class SuggestionSectionHandler: SectionHandler {
    var type: String {
        return ListDataType.suggetion.rawValue
    }

    func tableView(_ celModel: CellModel, _ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let suggestioCell = tableView.dequeueReusableCell(withIdentifier: "suggesrionCell") else {
         return UITableViewCell()
        }
        return suggestioCell
    }
}

class OpenClosePriciplePart2ViewModel {
    func createdTheSupportedModel() {
        let supportedSections = SectionContainer(handlers: [ProductSectionHandler(), AdSectionHandler(), SuggestionSectionHandler()])

        let listController = ListViewController(sectionContainer: supportedSections)
    }
}
