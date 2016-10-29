//
//  ViewController.swift
//  json demo
//
//  Created by Calvin on 2016/04/16.
//  Copyright © 2016 Gravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "https://api.myjson.com/bins/4sgto")!
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, respone, error) in
            
            
            if let urlContent = data {
             
                do {
                    
                    let jsonResult = try NSJSONSerialization.JSONObjectWithData(urlContent, options: NSJSONReadingOptions.MutableContainers)
                    
                    print(jsonResult["users"])
                    
                } catch {
                    print("Json serialisation failed")
                }
            
            //print (urlContent)
            }
        }
        task.resume()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

