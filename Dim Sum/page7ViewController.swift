//
//  page7ViewController.swift
//  Dim Sum
//
//  Created by Leung, Shelley on 9/28/16.
//  Copyright © 2016 Leung, Shelley. All rights reserved.
//

import UIKit

class page7ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var pageCount: UIView!
    @IBOutlet weak var page7ScrollView: UIScrollView!
    @IBOutlet weak var des1Page7: UILabel!
    @IBOutlet weak var des2Page7: UILabel!
    @IBOutlet weak var billImage1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        page7ScrollView.contentSize = CGSize(width: 320, height: 900)
        
        page7ScrollView.delegate = self
        
        pageCount.layer.cornerRadius = pageCount.frame.height / 2

        // Do any additional setup after loading the view.
    }

    @IBAction func didTapNextBtn(sender: AnyObject) {
        performSegueWithIdentifier("page78Segue", sender: nil)
        
    }
    
    @IBAction func didTapPageNumber(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.5, delay: 0.5, options: [], animations: {
            self.des1Page7.alpha = 1
        }) { (Bool) in
        }
        
        UIView.animateWithDuration(1, delay: 1.5, options: [], animations: {
            self.des2Page7.alpha = 1
        }) { (Bool) in
        }
        UIView.animateWithDuration(0.2, delay: 3, options: [], animations: {
            self.billImage1.alpha = 1
        }) { (Bool) in
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
