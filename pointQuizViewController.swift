//
//  pointQuizViewController.swift
//  PioneerPlan
//
//  Created by Kat Crawford on 7/15/20.
//  Copyright © 2020 Quiz Co. All rights reserved.
//

import UIKit
import WebKit
class pointQuizViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://docs.google.com/forms/d/e/1FAIpQLSc_77plNLoOPQIVt39bYrldIwx4anR4GuwV8fvodvwvMHJAtw/viewform")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }}
