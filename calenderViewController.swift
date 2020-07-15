//
//  calenderViewController.swift
//  PioneerPlan
//
//  Created by Kat Crawford on 7/14/20.
//  Copyright © 2020 Quiz Co. All rights reserved.
//

import UIKit
import WebKit
class calenderViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://calendar.expert/c792d8377d75361ebb84")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }}
