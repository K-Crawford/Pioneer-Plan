//
//  pointEarnersViewController.swift
//  PioneerPlan
//
//  Created by Kat Crawford on 7/15/20.
//  Copyright © 2020 Quiz Co. All rights reserved.
//

import WebKit
class pointEarnersViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://docs.google.com/presentation/d/1UF4FPQbK6POfgIwYbrYAV8zU0JsKJvh14rxm8dEUs0M/edit?usp=sharing")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }}
