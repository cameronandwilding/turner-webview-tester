//
//  ViewController.swift
//  SimpleWebView
//
//  Created by Peter Arato on 03/10/2016.
//  Copyright © 2016 Peter Arato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webview: UIWebView!
    @IBOutlet weak var nidField: UITextField!
    @IBOutlet weak var domainField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onPressGo() {
        let url_raw = "http://" + self.domainField.text! + "/editions/edition_JVuWy_2016-09-23/data/" + self.nidField.text! + "/index.html"
        NSLog(url_raw)
        let url = URL.init(string: url_raw)!
        let request = URLRequest.init(url: url, cachePolicy: NSURLRequest.CachePolicy.reloadIgnoringLocalAndRemoteCacheData)
        self.webview.loadRequest(request)
    }
    
    @IBAction func onPressReload() {
        self.webview.reload()
    }

}
