//
//  AdapterPattern.swift
//  AdapterPattern
//
//  Created by Monica Mishipay on 14/08/21.
//

import Foundation

typealias XML = String
typealias JSON = String
typealias AnalyzedData = String

class StockDataProvider {
    func downloadStockData() -> XML {
        return "XML data"
    }
}

protocol Chart {
    func displayCharts(data: XML)
}

class ChartCoreClass: Chart {
    func displayCharts(data: XML) {
        print("display charts with \(data)")
    }
}

class AnalyticsLibrary {
    func displayAnalyzedCharts(data: JSON) {
        print("display charts with \(data) analyzed")
    }
}

class XMLToJSONAdapter: Chart {
    let analytics: AnalyticsLibrary
    init(analytics: AnalyticsLibrary) {
        self.analytics = analytics
    }

    func displayCharts(data: XML) {
        let XMLToJSONData = "Converted \(data) to JSON data"
        analytics.displayAnalyzedCharts(data: XMLToJSONData)
    }
}
