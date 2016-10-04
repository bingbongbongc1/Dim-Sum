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
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
