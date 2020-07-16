//
//  pointRubricViewController.swift
//  PioneerPlan
//
//  Created by Kat Crawford on 7/15/20.
//  Copyright © 2020 Quiz Co. All rights reserved.
//

import WebKit
class pointRubricViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://docs.google.com/spreadsheets/d/1kHFmsjD-FgDgwKz08rDvdKTSnP6QO4pDLVuKEmAZk6Y/edit?usp=sharing")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }}
