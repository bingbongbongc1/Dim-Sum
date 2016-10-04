//
//  page8ViewController.swift
//  Dim Sum
//
//  Created by Leung, Shelley on 9/28/16.
//  Copyright © 2016 Leung, Shelley. All rights reserved.
//

import UIKit

class page8ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var pageCount: UIView!
    @IBOutlet weak var page8ScrollView: UIScrollView!
    @IBOutlet weak var des1Page8: UILabel!
    @IBOutlet weak var refillWaterImage1: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        page8ScrollView.contentSize = CGSize(width: 320, height: 568)
        
        page8ScrollView.delegate = self
        
        pageCount.layer.cornerRadius = pageCount.frame.height / 2


        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.5, delay: 0.5, options: [], animations: {
            self.des1Page8.alpha = 1
        }) { (Bool) in
        }
        
        UIView.animateWithDuration(1, delay: 1.5, options: [], animations: {
            self.refillWaterImage1.alpha = 1
        }) { (Bool) in
        }
        UIView.animateWithDuration(0.2, delay: 3, options: [], animations: {
            self.nextButton.alpha = 1
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
