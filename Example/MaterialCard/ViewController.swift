//
//  ViewController.swift
//  MaterialCard
//
//  Created by Nathan Walker on 03/20/2016.
//  Copyright (c) 2016 Nathan Walker. All rights reserved.
//

import UIKit
import MaterialCard

class ViewController: UIViewController, UIScrollViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 0.74, green: 0.86, blue: 0.9, alpha: 1)
        cardDemo()
    }
    
    func cardDemo() {
        
        let c = MaterialCard(frame: CGRectMake(10, UIApplication.sharedApplication().statusBarFrame.size.height + 10, UIApplication.sharedApplication().statusBarFrame.size.width - 20, 100))
        let label = UILabel(frame: CGRectMake(0, 37, c.frame.size.width, 21))
        label.textAlignment = NSTextAlignment.Center
        label.text = "MaterialCard Demo"
        c.backgroundColor = UIColor.whiteColor()
        c.shadowOpacity = 0.2
        c.shadowOffsetHeight = 0
        c.cornerRadius = 0
        c.addSubview(label)
        
        let c2 = MaterialCard(frame: CGRectMake(10, c.frame.origin.y + c.frame.size.height + 10, UIApplication.sharedApplication().statusBarFrame.size.width - 20, 100))
        let label2 = UILabel(frame: CGRectMake(0, 37, c.frame.size.width, 21))
        label2.textAlignment = NSTextAlignment.Center
        label2.textColor = UIColor.whiteColor()
        label2.text = "Material Design is Nice!"
        c2.backgroundColor = UIColor(red: 0.33, green: 0.57, blue: 0.9, alpha: 1)
        c2.shadowOpacity = 0.2
        c2.shadowOffsetHeight = 0
        c2.cornerRadius = 0
        c2.addSubview(label2)
        
        let c3 = MaterialCard(frame: CGRectMake(10, c2.frame.origin.y + c2.frame.size.height + 10, UIApplication.sharedApplication().statusBarFrame.size.width - 20, 150))
        let label3 = UILabel(frame: CGRectMake(0, 52, c.frame.size.width, 21))
        label3.textAlignment = NSTextAlignment.Center
        label3.textColor = UIColor.whiteColor()
        label3.text = "CocoaPods are great!"
        c3.backgroundColor = UIColor(red: 0.65, green: 0.81, blue: 0.25, alpha: 1)
        c3.shadowOpacity = 0.2
        c3.shadowOffsetHeight = 0
        c3.cornerRadius = 0
        c3.addSubview(label3)
        
        let bounds = UIScreen.mainScreen().bounds
        let scrollView = UIScrollView(frame: bounds)
        scrollView.delegate = self
        scrollView.contentSize = CGSizeMake(bounds.size.width, bounds.size.height)
        scrollView.addSubview(c)
        scrollView.addSubview(c2)
        scrollView.addSubview(c3)
        self.view.addSubview(scrollView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

