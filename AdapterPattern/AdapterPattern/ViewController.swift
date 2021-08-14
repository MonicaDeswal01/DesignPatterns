//
//  ViewController.swift
//  AdapterPattern
//
//  Created by Monica Mishipay on 14/08/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func adapterPattern() {
        //Client Application
        let provider = StockDataProvider()
        let XMLData = provider.downloadStockData()

        // Client without Adapter
        let client = ChartCoreClass()
        client.displayCharts(data: XMLData)

        //Client with adapter
        let analyicsLib = AnalyticsLibrary()
        let adapterClient = XMLToJSONAdapter(analytics: analyicsLib)
        adapterClient.displayCharts(data: XMLData)

    }


}

