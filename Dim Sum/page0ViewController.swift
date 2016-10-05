//
//  page0ViewController.swift
//  Dim Sum
//
//  Created by Leung, Shelley on 10/4/16.
//  Copyright © 2016 Leung, Shelley. All rights reserved.
//

import UIKit


class page0ViewController: UIViewController {

    @IBOutlet weak var pageCount: UIView!
    @IBOutlet weak var des1Page0: UILabel!
    @IBOutlet weak var des2Page0: UILabel!
    @IBOutlet weak var startBtn: UIButton!
    @IBOutlet weak var skipBtn: UIButton!
    @IBOutlet weak var backBtn: UIButton!
    
    var fromWhere: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pageCount.layer.cornerRadius = pageCount.frame.height / 2
        
        UIView.animateWithDuration(0.5, delay: 0.5, options: [], animations: {
            self.des1Page0.alpha = 1
        }) { (Bool) in
        }
        
        UIView.animateWithDuration(1, delay: 1.5, options: [], animations: {
            self.des2Page0.alpha = 1
        }) { (Bool) in
        }
        
        UIView.animateWithDuration(0.2, delay: 2.5, options: [], animations: {
            self.startBtn.alpha = 1
            self.skipBtn.alpha = 1
        }) { (Bool) in
        }
        
        // Do any additional setup after loading the view.
    }

    
    @IBAction func didTapStartBtn(sender: AnyObject) {
        performSegueWithIdentifier("page01Segue", sender: self)
        }
    
    @IBAction func didTapPageNumber(sender: AnyObject) {
        dismissViewControllerAnimated(true) {
        }
    }
    
    
    @IBAction func didTapBackBtn(sender: AnyObject) {
        dismissViewControllerAnimated(true) { 
        }
    }
    
//    func layoutView() {
//        
//        if fromWhere == true {
//            
//            backBtn.hidden = true
//        
//        }
//        else {
//        
//            startBtn.hidden = true
//            skipBtn.hidden = true
//        }
//    
//    }
    
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
