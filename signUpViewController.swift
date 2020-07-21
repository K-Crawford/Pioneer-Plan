//
//  signUpViewController.swift
//  PioneerPlan
//
//  Created by Kat Crawford on 7/16/20.
//  Copyright © 2020 Quiz Co. All rights reserved.
//

import UIKit
import WebKit
class signUpViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://docs.google.com/forms/d/e/1FAIpQLSf6_wQANFr1j5qkzw_DOVgLbvq1ifPKWEtwy9iTLc5gWM3G1A/viewform?usp=sf_link")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }}
