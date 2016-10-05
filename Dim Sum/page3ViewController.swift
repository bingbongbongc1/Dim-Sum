//
//  page3ViewController.swift
//  Dim Sum
//
//  Created by Leung, Shelley on 9/28/16.
//  Copyright © 2016 Leung, Shelley. All rights reserved.
//

import UIKit

class page3ViewController: UIViewController,UIScrollViewDelegate {
    
    @IBOutlet weak var pageCount: UIView!
    @IBOutlet weak var page3ScrollView: UIScrollView!
    @IBOutlet weak var des1Page3: UILabel!
    @IBOutlet weak var des2Page3: UILabel!
    @IBOutlet weak var dimSumCartImage1: UIImageView!
    @IBOutlet weak var cartLinesImage2: UIImageView!
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var nextBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        page3ScrollView.contentSize = CGSize(width: 320, height: 900)
        
        page3ScrollView.delegate = self
        
        pageCount.layer.cornerRadius = pageCount.frame.height / 2

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.5, delay: 0.5, options: [], animations: {
            self.des1Page3.alpha = 1
        }) { (Bool) in
        }
        
        UIView.animateWithDuration(1, delay: 1.5, options: [], animations: {
            self.des2Page3.alpha = 1
        }) { (Bool) in
        }
        UIView.animateWithDuration(1, delay: 3, options: [], animations: {
           self.dimSumCartImage1.transform = CGAffineTransformMakeTranslation(225, -55)
            self.cartLinesImage2.transform = CGAffineTransformMakeTranslation(225, -55)
        }) { (Bool) in
        }
        
        UIView.animateWithDuration(0.2, delay: 4, options: [], animations: {
            self.label1.alpha = 1
        }) { (Bool) in
        }
        
        UIView.animateWithDuration(0.2, delay: 4.5, options: [], animations: {
            self.cartLinesImage2.alpha = 0
        }) { (Bool) in
        }
    }
    
    @IBAction func didTapNextBtn(sender: AnyObject) {
        performSegueWithIdentifier("page34Segue", sender: nil)
    }
    
    @IBAction func didTapPageNumber(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
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
