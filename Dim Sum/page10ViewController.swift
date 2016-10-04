//
//  page10ViewController.swift
//  Dim Sum
//
//  Created by Leung, Shelley on 9/28/16.
//  Copyright © 2016 Leung, Shelley. All rights reserved.
//

import UIKit

class page10ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var pageCount: UIView!
    @IBOutlet weak var page10ScrollView: UIScrollView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        page10ScrollView.contentSize = CGSize(width: 320, height: 900)
        
        page10ScrollView.delegate = self
        
        pageCount.layer.cornerRadius = pageCount.frame.height / 2

        // Do any additional setup after loading the view.
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
