//
//  ViewController.swift
//  03Animate
//
//  Created by sven on 16/12/18.
//  Copyright © 2016年 sven. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameCenterConstrain: NSLayoutConstraint!
    @IBOutlet weak var passwordCenterConstrain: NSLayoutConstraint!
    @IBOutlet weak var loginBtnCenterConstrain: NSLayoutConstraint!
    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        userNameCenterConstrain.constant -= view.bounds.size.width
        passwordCenterConstrain.constant -= view.bounds.size.width
        loginBtnCenterConstrain.constant -= view.bounds.size.width
        loginBtn.alpha = 0;
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animateWithDuration(0.5, delay: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            self.userNameCenterConstrain.constant += self.view.bounds.size.width
            self.view.layoutIfNeeded() // 调用 self.view.layoutIfNeed
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.1, options: UIViewAnimationOptions.CurveLinear, animations: { 
            self.passwordCenterConstrain.constant += self.view.bounds.size.width
            self.view.layoutIfNeeded()
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.1, options: UIViewAnimationOptions.CurveLinear, animations: {
            self.loginBtnCenterConstrain.constant += self.view.bounds.size.width
            self.loginBtn.alpha = 1
            self.view.layoutIfNeeded()
            }, completion: nil)
        
//        UIView.animateWithDuration(0.5, delay: 0.1, options: UIViewAnimationOptions.CurveEaseIn, animations: { 
//            self.loginBtnCenterConstrain.constant += self.view.bounds.size.width
//            self.view.layoutIfNeeded()
//            }) { (true) in
//                self.loginBtn.alpha = 1
//        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func backBtnAction(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func loginAction(sender: AnyObject) {
//        UIView.animateWithDuration(0.3, delay: 0, options: UIViewAnimationOptions.BeginFromCurrentState, animations: { 
//            self.loginBtn.bounds.size.width += 30
//            }, completion: nil)
//        let bouns = loginBtn.bounds;
        UIView.animateWithDuration(1, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: UIViewAnimationOptions.CurveLinear, animations: {
            self.loginBtn.bounds.size.width += 70
//            self.loginBtn.bounds = CGRect(x:(bouns.minX - 15), y:bouns.minY, width:bouns.size.width + 30, height:bouns.height)
            }, completion: nil)
    }
    
}

