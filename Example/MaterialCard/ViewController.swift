//
//  ViewController.swift
//  MaterialCard
//
//  Created by Nathan Walker on 09/30/2016.
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
        
        let c = MaterialCard(frame: CGRect(x: 10, y: UIApplication.shared.statusBarFrame.size.height + 10, width: UIApplication.shared.statusBarFrame.size.width - 20, height: 100))
        let label = UILabel(frame: CGRect(x: 0, y: 37, width: c.frame.size.width, height: 21))
        label.textAlignment = NSTextAlignment.center
        label.text = "MaterialCard Demo"
        c.backgroundColor = UIColor.white
        c.shadowOpacity = 0.2
        c.shadowOffsetHeight = 0
        c.cornerRadius = 0
        c.addSubview(label)
        
        let c2 = MaterialCard(frame: CGRect(x: 10, y: c.frame.origin.y + c.frame.size.height + 10, width: UIApplication.shared.statusBarFrame.size.width - 20, height: 100))
        let label2 = UILabel(frame: CGRect(x: 0, y: 37, width: c.frame.size.width, height: 21))
        label2.textAlignment = NSTextAlignment.center
        label2.textColor = UIColor.white
        label2.text = "Material Design is Nice!"
        c2.backgroundColor = UIColor(red: 0.33, green: 0.57, blue: 0.9, alpha: 1)
        c2.shadowOpacity = 0.2
        c2.shadowOffsetHeight = 0
        c2.cornerRadius = 0
        c2.addSubview(label2)
        
        let c3 = MaterialCard(frame: CGRect(x: 10, y: c2.frame.origin.y + c2.frame.size.height + 10, width: UIApplication.shared.statusBarFrame.size.width - 20, height: 150))
        let label3 = UILabel(frame: CGRect(x: 0, y: 52, width: c.frame.size.width, height: 21))
        label3.textAlignment = NSTextAlignment.center
        label3.textColor = UIColor.white
        label3.text = "CocoaPods are great!"
        c3.backgroundColor = UIColor(red: 0.65, green: 0.81, blue: 0.25, alpha: 1)
        c3.shadowOpacity = 0.2
        c3.shadowOffsetHeight = 0
        c3.cornerRadius = 0
        c3.addSubview(label3)
        
        let bounds = UIScreen.main.bounds
        let scrollView = UIScrollView(frame: bounds)
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width: bounds.size.width, height: bounds.size.height)
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

