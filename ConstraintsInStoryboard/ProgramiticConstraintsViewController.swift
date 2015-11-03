//
//  ProgramiticConstraintsViewController.swift
//  ConstraintsInStoryboard
//
//  Created by Bob Pascazio on 2/18/15.
//  Copyright (c) 2015 Pace. All rights reserved.
//

import UIKit

class ProgramiticConstraintsViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.setupViews()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupViews() {
        
        let cyanView = UIView(frame: CGRect(x: 100,y: 200,width: 100,height: 100))
        cyanView.backgroundColor=UIColor.cyanColor()
        cyanView.translatesAutoresizingMaskIntoConstraints = false
        self.view.translatesAutoresizingMaskIntoConstraints = false

        self.view.addSubview(cyanView)
        
        cyanView.addConstraint(NSLayoutConstraint(
            item: cyanView,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute:
            NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 25.0))
        
        cyanView.addConstraint(NSLayoutConstraint(
            item: cyanView,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 25.0))
        
        self.view.addConstraint(NSLayoutConstraint(
            item: cyanView,
            attribute: NSLayoutAttribute.Right,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Right,
            multiplier: 1.0,
            constant: 0.0))
        
        self.view.addConstraint(NSLayoutConstraint(
            item: cyanView,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1.0,
            constant: 0.0))
        

    }
    
    func setupConstraints() {
    }
    
}