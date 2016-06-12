//
//  DAImageGallery.swift
//  TestSwiftProject
//
//  Copyright © 2016 TheAppSpace. All rights reserved.
//

import UIKit

class DAImageGallery: XibSetupView, UIScrollViewDelegate {
    let images = ["space_1.jpg","space_2.jpg","space_3.jpeg","space_4.jpg"]
    @IBOutlet var scrollView: UIScrollView!;
    @IBOutlet var pageControl: UIPageControl!;

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clearColor()
        xibSetup()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    }
    @IBAction func onBackButton(btn: UIButton){
        self.removeFromSuperview();
    }
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect){
        var x:CGFloat = 0.0

        for i in 0 ..< images.count{
            let img = images[i]
            x = CGFloat (i) * rect.size.width;
            let imgView = UIImageView(frame: CGRectMake(x, 0, rect.size.width, scrollView.frame.size.height))
            imgView.image = UIImage(named: img)
            imgView.contentMode = .ScaleAspectFit
            scrollView.addSubview(imgView)
        }
        pageControl.numberOfPages = images.count
        scrollView.contentSize = CGSizeMake(CGFloat(images.count) * rect.size.width, 0)
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        let pageWidth = scrollView.frame.size.width;
        let page = Int (floor((scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1)
        pageControl.currentPage = page
    }

}
