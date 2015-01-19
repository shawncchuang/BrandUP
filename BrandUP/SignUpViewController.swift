//
//  SignUpViewController.swift
//  BrandUP
//
//  Created by ShawnCCHuang on 2015-01-19.
//  Copyright (c) 2015 ShawnCCHuang. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    var signupActive = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        println(PFUser.currentUser())
        
        if PFUser.currentUser() != nil {

          
            self.performSegueWithIdentifier("signedin", sender: self)
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
