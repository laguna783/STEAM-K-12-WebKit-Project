//
// ViewController.swift
//
// STEAM K-12 WebKit Project
// Created by Giancarlos Alvarado on 2/3/21.
// This project is a part of STEAM K-12's ongoing Swift coding classes for K-12 students and educators.

// You can find more information on STEAM K-12 at www.steamk12.org
// You can also email me at Giancarlos@steamk12.org for more information about our organization.

// SECTION 1 - API's: In this section we import the API's that will allow us to issue the proper commands. Remember, coding is the art of giving instruction and commands to a computer. Without importing the API's we cannot give the computer the proper instructions/commands.

import UIKit
import WebKit

// SECTION 2 - The CLASS Section: Classes are "building blocks of flexible constructs" where we define our class properties, methods and functions. In this section we call upon our classes (webViews, viewcontrollers, etc.) that will be used in our app.

class ViewController: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!

// SECTION 3 - The OVERRIDE Section: In Swift 5, overrides are used when "you want to write your own method to replace an existing one in a parent class. It's used commonly when you're working with UIViewControllers, because view controllers already come with lots of methods like viewDidLoad() and viewWillAppear(). When you want to override these default methods, you need to specify this with the override keyword." This will ensure that your code stays safe.
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
// SECTION 4 - The URL CODE REQUEST: URL stands for "Uniform Resource Locator". The code in this section makes an URL request so that our app can display a website within our view.
        
        let url = URL(string: "https://www.steamk12.org")!
        webView.load(URLRequest(url: url))
        
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
        
        toolbarItems = [refresh]
        navigationController?.isToolbarHidden = false
        
        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            title = webView.title
            
        }
        
    }


}

// This project is very much a work in progress.
