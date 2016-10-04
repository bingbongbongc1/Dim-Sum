//
//  page4ViewController.swift
//  Dim Sum
//
//  Created by Leung, Shelley on 9/28/16.
//  Copyright © 2016 Leung, Shelley. All rights reserved.
//

import UIKit

class page4ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var pageCount: UIView!
    @IBOutlet weak var page4ScrollView: UIScrollView!
    @IBOutlet weak var des1Page4: UILabel!
    @IBOutlet weak var des2Page4: UILabel!
    @IBOutlet weak var familyImage1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        page4ScrollView.contentSize = CGSize(width: 320, height: 750)
        
        page4ScrollView.delegate = self
        
        pageCount.layer.cornerRadius = pageCount.frame.height / 2

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.5, delay: 0.5, options: [], animations: {
            self.des1Page4.alpha = 1
        }) { (Bool) in
        }
        
        UIView.animateWithDuration(1, delay: 1.5, options: [], animations: {
            self.des2Page4.alpha = 1
        }) { (Bool) in
        }
        UIView.animateWithDuration(0.2, delay: 3, options: [], animations: {
            self.familyImage1.alpha = 1
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
