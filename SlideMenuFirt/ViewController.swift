//
//  ViewController.swift
//  SlideMenuFirt
//
//  Created by Trung on 9/25/18.
//  Copyright © 2018 TrungCatun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var trailingVC: NSLayoutConstraint!
    
    @IBOutlet weak var leadingVC: NSLayoutConstraint!
    
    @IBOutlet weak var firtView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    var menuSlide = false
    @IBAction func ChoseViewAction(_ sender: UIBarButtonItem) {
        if !menuSlide {
            leadingVC.constant = 2*(firtView.bounds.width)/3
            trailingVC.constant = -2*(firtView.bounds.width)/3
//            firtView.frame.origin.x = firtView.bounds.width/2
            menuSlide = true
            firtView.alpha = 0.4
        }
        else {
            leadingVC.constant = 0
            trailingVC.constant = 0
            
//             firtView.frame.origin.x = 0
            menuSlide = false
            firtView.alpha = 1
        }
        UIView.animate(withDuration: 2, delay: 0.0, options: .curveEaseIn, animations: {self.view.layoutIfNeeded()})
    }
    
    @IBAction func CloseAction(_ sender: UIButton) {
        if menuSlide {
            leadingVC.constant = 0
            trailingVC.constant = 0
            menuSlide = false
            firtView.alpha = 1
        }
        UIView.animate(withDuration: 2, delay: 0.0, options: .curveEaseIn, animations: {self.view.layoutIfNeeded()})
    }
    

}

