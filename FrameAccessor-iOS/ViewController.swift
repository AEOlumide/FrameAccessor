//
//  ViewController.swift
//  FrameAccessor-iOS
//
//  Created by Adedayo Olumide on 7/1/14.
//  Copyright (c) 2014 Adedayo Olumide. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let testView: UIView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.testView.frame = CGRectMake(0, 0, 200, 200)
        self.testView.backgroundColor  = UIColor(red: 0.992, green: 0.486, blue: 0.431, alpha: 1)
        //[UIColor colorWithRed:0.267 green:0.843 blue:0.659 alpha:1.0]

        self.testView.layer.cornerRadius = 100.0
        self.testView.setViewOrigin(CGPointMake(50, 50))
        self.view.addSubview(self.testView)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
