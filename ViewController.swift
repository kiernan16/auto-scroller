//
//  ViewController.swift
//  Auto Scroller
//
//  Created by Matthew Kiernan on 2/10/15.
//  Copyright (c) 2015 Matt Kiernan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadAddressURL()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var autoscrollbutton: UIButton!
    @IBAction func AutoScrollAction(sender: AnyObject) {
       var currentURL : NSString = (webview.request?.URL.absoluteString)!
       
            autoscroll()
    }
    
    
    @IBOutlet var webview: UIWebView!
    
    @IBOutlet weak var speedscroll: UISlider!

   var URLPath = "https://www.twitter.com"
 //   var URLPath = "http://www.google.com"
    
    func loadAddressURL() {
        let urlstring = NSURL(string: URLPath)
        let requestURL = NSURLRequest(URL: urlstring!)
        webview.loadRequest(requestURL)
    }
    
    func autoscroll(){
        
        let script = "window.scrollBy(0,180);"
        let twitter = "window.frames[0].scrollBy(0,180)"
        webview.stringByEvaluatingJavaScriptFromString(script)
        webview.stringByEvaluatingJavaScriptFromString(twitter)

        // TODO: TIMER

    }

    func ScrollToTop(){
        let script = "window.scrollTo(0, 0);"
        webview.stringByEvaluatingJavaScriptFromString(script)
    }
    
    /*
    
    - (void)scrollFeaturedView:(int)counter{
    CGRect frame;
    frame.origin.x = self.FeaturedView.frame.size.width * counter;
    frame.origin.y = 0;
    frame.size = self.FeaturedView.frame.size;
    
    [UIView animateWithDuration:1
    delay:3
    options: UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionAllowUserInteraction
    animations:^{ [self.FeaturedView scrollRectToVisible:frame animated:NO]; }
    completion:^ (BOOL finished)
    {
    if (finished) {
    if (counter != [articleLists count])
    {
    [self scrollFeaturedView:counter + 1];
    }
    else
    {
    [self scrollFeaturedView:0];
    }
    }
    }];
    }
    
    */
    
}

