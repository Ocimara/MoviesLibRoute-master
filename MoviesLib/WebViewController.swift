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
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func runJS(_ sender: UIBarButtonItem) {
        webView.stringByEvaluatingJavaScript(from: "alert('Rodando Java Script na webView')")
    
    }

}



extension WebViewController: UIWebViewDelegate {
    func webViewDidFinishLoad(_ webView: UIWebView) {
        loading.stopAnimating()
    }
    
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        
        //não carrega
        //if request.url!.absoluteString.range(of: "itau") != nil {return false}
        if request.url!.absoluteString.range(of: "itau") != nil {
            webView.stringByEvaluatingJavaScript(from: "alert('Não carregarei para teste')")
            dismiss(animated: true, completion: nil)
            return false
        }
        return true
    }
}
