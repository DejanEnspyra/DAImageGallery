//
//  ViewController.swift
//  TestSwiftProject
//
//  Created by Born2invest on 28/05/16.
//  Copyright © 2016 TheAppSpace. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var imageGallery: DAImageGallery!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageGallery = DAImageGallery(frame: CGRectZero)
        self.view.addSubview(imageGallery)
        boundInside(self.view, subview: imageGallery)
        
    }
    
    func boundInside(superView: UIView, subview: UIView){
        subview.translatesAutoresizingMaskIntoConstraints = false
        superView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[subview]-0-|", options: NSLayoutFormatOptions.DirectionLeadingToTrailing, metrics:nil, views:["subview":subview]))
        superView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[subview]-0-|", options: NSLayoutFormatOptions.DirectionLeadingToTrailing, metrics:nil, views:["subview":subview]))
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

