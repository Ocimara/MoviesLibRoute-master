//
//  WebViewController.swift
//  MoviesLib
//
//  Created by Usuário Convidado on 04/04/18.
//  Copyright © 2018 EricBrito. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

   
    @IBOutlet weak var webView: UIWebView!

    @IBOutlet weak var loading: UIActivityIndicatorView!
    
    var url: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let webpageURL = URL(string: url)
        let request = URLRequest(url:webpageURL!)
        webView.loadRequest(request)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}



extension WebViewController: UIWebViewDelegate {
    func webViewDidFinishLoad(_ webView: UIWebView) {
        loading.stopAnimating()
    }
    
    
}
