//
//  clubsListViewController.swift
//  PioneerPlan
//
//  Created by Kat Crawford on 7/16/20.
//  Copyright © 2020 Quiz Co. All rights reserved.
//

import UIKit
import WebKit
class clubsListViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://docs.google.com/spreadsheets/d/1EslLzrWNO5G5A0A4NuXVZpWE793bW3Y8PDLdmZUfpcA/edit?usp=sharing")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }}
