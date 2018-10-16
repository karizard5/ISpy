//
//  ViewController.swift
//  ISpy
//
//  Created by Reid, Jon Carl on 10/15/18.
//  Copyright © 2018 Reid, Jon Carl. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet var scrollViewOutlet: UIScrollView!
    
    @IBOutlet var imageViewOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        scrollViewOutlet.delegate = self
        updateZoomFor(size: view.bounds.size)
    }


    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageViewOutlet
    }


    func updateZoomFor(size: CGSize){
        let widthScale = size.width / imageViewOutlet.bounds.width
        let heightScale = size.height / imageViewOutlet.bounds.height
        let scale = min(widthScale, heightScale)
        scrollViewOutlet.minimumZoomScale = scale
    }
}


