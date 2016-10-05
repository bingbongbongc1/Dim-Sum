//
//  page9ViewController.swift
//  Dim Sum
//
//  Created by Leung, Shelley on 9/28/16.
//  Copyright © 2016 Leung, Shelley. All rights reserved.
//

import UIKit


class page9ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var pageCount: UIView!
    @IBOutlet weak var page9ScrollView: UIScrollView!
    
    @IBOutlet weak var des1Page9: UILabel!
    @IBOutlet weak var des2Page9: UILabel!
    @IBOutlet weak var des3Page9: UILabel!
    @IBOutlet weak var des4Page9: UILabel!
    
    @IBOutlet weak var topTeaCupLeftImage1: UIImageView!
    @IBOutlet weak var topTeaCupMiddleImage2: UIImageView!
    @IBOutlet weak var topTeaCupRightImage3: UIImageView!
    
    @IBOutlet weak var topTeaPotImage4: UIImageView!
    @IBOutlet weak var topTeaPotFlippedImage4b: UIImageView!
    
    @IBOutlet weak var topTeaLeftImage1a: UIImageView!
    @IBOutlet weak var topTeaMiddleImage2a: UIImageView!
    @IBOutlet weak var topTeaRightImage3a: UIImageView!
    
    @IBOutlet weak var topTeaFilledLeftImage1b: UIImageView!
    @IBOutlet weak var topTeaFilledMiddleImage2b: UIImageView!
    @IBOutlet weak var topTeaFilledRightImage3b: UIImageView!
    
    @IBOutlet weak var bottomTeaPotImage5: UIImageView!
    @IBOutlet weak var bottomTeaCupImage6: UIImageView!
    @IBOutlet weak var bottomTeaPourImage7: UIImageView!
    @IBOutlet weak var bottomTeaFilledImage8: UIImageView!
    
    
    @IBOutlet weak var handView: UIView!
    @IBOutlet weak var bottomHandImage9: UIImageView!
    @IBOutlet weak var bottomFingerTopImage10: UIImageView!
    @IBOutlet weak var bottomFingerMiddleImage11: UIImageView!
    @IBOutlet weak var bottomFingerDownImage12: UIImageView!
    
    @IBOutlet weak var tryItButton1a: UIButton!
    @IBOutlet weak var tryItButton1b: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        page9ScrollView.contentSize = CGSize(width: 320, height: 1644)
        
        page9ScrollView.delegate = self
        
        pageCount.layer.cornerRadius = pageCount.frame.height / 2

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.5, delay: 0.5, options: [], animations: {
            self.des1Page9.alpha = 1
        }) { (Bool) in
        }
        
        UIView.animateWithDuration(0.5, delay: 1.5, options: [], animations: {
            self.des2Page9.alpha = 1
        }) { (Bool) in
        }
        UIView.animateWithDuration(0.5, delay: 3, options: [], animations: {
            self.des3Page9.alpha = 1
        }) { (Bool) in
        }
        UIView.animateWithDuration(0.5, delay: 3.5, options: [], animations: {
            self.des4Page9.alpha = 1
        }) { (Bool) in
        }
    }
    
//    func scrollViewDidScroll(scrollView: UIScrollView) {
//        
//        // Content offset: 0 -> 1096
//        let offset = CGFloat(page9ScrollView.contentOffset.y)
//        
//        // Transformation for image 1
//        let tx1 = convertValue(offset, r1Min: 0, r1Max: 1096, r2Min: 0, r2Max: 0)
//        let ty1 = convertValue(offset, r1Min: 0, r1Max: 1096, r2Min: 350, r2Max: 0)
//        
//        des4Page9.transform = CGAffineTransformMakeTranslation(CGFloat(tx1), CGFloat(ty1))
//        
//    }

    
    @IBAction func didTapNextBtn(sender: AnyObject) {
        performSegueWithIdentifier("page910Segue", sender: nil)
    }
    
    @IBAction func didTapPageNumber(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    // First 'try it" button - pour tea for others
    @IBAction func didTapTryItButton1a(sender: AnyObject) {
        
        self.tryItButton1a.alpha = 0
        self.topTeaFilledLeftImage1b.alpha = 0
        self.topTeaFilledMiddleImage2b.alpha = 0
        self.topTeaFilledRightImage3b.alpha = 0
        
        // Lift teapot up and pour left
        UIView.animateWithDuration(1, delay: 0, options: [], animations: {
            self.topTeaPotImage4.center = CGPoint(x: 174, y: 756)
            self.topTeaPotImage4.transform = CGAffineTransformRotate(self.topTeaPotImage4.transform, CGFloat(-40 * M_PI / 180))
            }) { (Bool) in
            
            }
        
        // Start pouring tea
        UIView.animateWithDuration(1.5, delay: 1, options: [], animations: {
            self.topTeaLeftImage1a.alpha = 1
            }) { (Bool) in
                
                self.topTeaLeftImage1a.alpha = 0
                self.topTeaFilledLeftImage1b.alpha = 1
                
            }
        
        // Return teapot to original position and flip to right
        UIView.animateWithDuration(1, delay: 2.5, options: [], animations: {
            self.topTeaPotImage4.transform = CGAffineTransformRotate(self.topTeaPotImage4.transform, CGFloat(40 * M_PI / 180))
            self.topTeaPotImage4.center = CGPoint(x: 160.5, y: 798)
        }) { (Bool) in
            
            UIView.animateWithDuration(0.5, delay: 0.5, options: [], animations: {
                self.topTeaPotImage4.transform = CGAffineTransformMakeScale(-1, 1)
                }, completion: { (Bool) in
                    
                    self.topTeaPotImage4.alpha = 0
                    self.topTeaPotFlippedImage4b.alpha = 1
                    
            })
        }
        
        
        // Lift teapot up and pour right
        UIView.animateWithDuration(1, delay: 5, options: [], animations: {
            self.topTeaPotFlippedImage4b.transform = CGAffineTransformMakeRotation(CGFloat(40 * M_PI / 180))
            self.topTeaPotFlippedImage4b.center = CGPoint(x: 150, y: 756)
        }) { (Bool) in
        }
        
        // Start pouring tea
        UIView.animateWithDuration(1.5, delay: 6, options: [], animations: {
            self.topTeaRightImage3a.alpha = 1
        }) {(Bool) in
            self.topTeaRightImage3a.alpha = 0
            self.topTeaFilledRightImage3b.alpha = 1
        }

        
        // Return teapot to original position
        UIView.animateWithDuration(1, delay: 7.5, options: [], animations: {
            self.topTeaPotFlippedImage4b.transform = CGAffineTransformRotate(self.topTeaPotImage4.transform, CGFloat(0 * M_PI / 180))
            self.topTeaPotFlippedImage4b.center = CGPoint(x: 160.5, y: 798)
        }) { (Bool) in
        }
        
        // Lift teapot up and pour right
        UIView.animateWithDuration(1, delay: 8.5, options: [], animations: {
            self.topTeaPotFlippedImage4b.transform = CGAffineTransformMakeRotation(CGFloat(40 * M_PI / 180))
            self.topTeaPotFlippedImage4b.center = CGPoint(x: 40, y: 823)
        }) { (Bool) in
        }
        
        // Start pouring tea
        UIView.animateWithDuration(1.5, delay: 9.5, options: [], animations: {
            self.topTeaMiddleImage2a.alpha = 1
        }) {(Bool) in
            self.topTeaMiddleImage2a.alpha = 0
            self.topTeaFilledMiddleImage2b.alpha = 1
        }
        
        // Return teapot to original position and flip to left
        UIView.animateWithDuration(1, delay: 11, options: [], animations: {
            self.topTeaPotFlippedImage4b.transform = CGAffineTransformRotate(self.topTeaPotImage4.transform, CGFloat(0 * M_PI / 180))
            self.topTeaPotFlippedImage4b.center = CGPoint(x: 160.5, y: 798)
        }) { (Bool) in
            
            self.topTeaPotFlippedImage4b.alpha = 0
            self.topTeaPotImage4.alpha = 1
            
            UIView.animateWithDuration(0.5, delay: 0.5, options: [], animations: {
                self.topTeaPotImage4.transform = CGAffineTransformMakeScale(1, 1)
                }, completion: { (Bool) in
                    self.tryItButton1a.alpha = 1
 
                })
        }
    }
    
    // Second 'try it" button - tap finger
    @IBAction func didTapTryItButton1b(sender: AnyObject) {
        
        self.tryItButton1b.alpha = 0
        self.bottomTeaFilledImage8.alpha = 0
        
        // Move teapot and pour right
        UIView.animateWithDuration(1, delay: 0, options: [], animations: {
            self.bottomTeaPotImage5.center = CGPoint(x:43, y: 1281)
            self.bottomTeaPotImage5.transform = CGAffineTransformRotate(self.bottomTeaPotImage5.transform, CGFloat(40 * M_PI / 180))
        }) { (Bool) in
            
        }
        
        // Start pouring tea
        UIView.animateWithDuration(1.5, delay: 1, options: [], animations: {
            self.bottomTeaPourImage7.alpha = 1
        }) {(Bool) in
            self.bottomTeaPourImage7.alpha = 0
            self.bottomTeaFilledImage8.alpha = 1
        }
        
        // Hand comes out
        UIView.animateWithDuration(0.5, delay: 1.5, options: [], animations: {
            self.bottomHandImage9.center = CGPoint(x: 255, y: 1430)
            self.bottomFingerTopImage10.center = CGPoint(x: 255, y: 1430)
            self.bottomFingerMiddleImage11.center = CGPoint(x: 255, y: 1430.5)
            self.bottomFingerDownImage12.center = CGPoint(x: 255, y: 1430.5)
        }) { (Bool) in
            
//            let rotation = CGFloat(5 * M_PI / 180)
//            
//            UIView.animateWithDuration(0.3, delay: 0, options: [UIViewAnimationOptions.Repeat,UIViewAnimationOptions.Autoreverse], animations: {
//                self.bottomFingerMiddleImage11.transform = CGAffineTransformRotate(self.bottomFingerMiddleImage11.transform, rotation)
//                }, completion: { (Bool) in
//                    
//            })

            
            // Tap finger
            UIView.animateWithDuration(0.9, delay:0, options: [], animations: {
            
                delay(0.1){
                    self.bottomFingerTopImage10.alpha = 0
                    self.bottomFingerMiddleImage11.alpha = 1
                    }
                delay(0.2){
                    self.bottomFingerMiddleImage11.alpha = 0
                    self.bottomFingerDownImage12.alpha = 1
                    }
                
                delay(0.3){
                    self.bottomFingerDownImage12.alpha = 0
                    self.bottomFingerMiddleImage11.alpha = 1
                    }
                delay(0.4){
                    self.bottomFingerMiddleImage11.alpha = 0
                    self.bottomFingerTopImage10.alpha = 1
                    }
                delay(0.5){
                    self.bottomFingerTopImage10.alpha = 0
                    self.bottomFingerMiddleImage11.alpha = 1
                    }
                delay(0.6){
                    self.bottomFingerMiddleImage11.alpha = 0
                    self.bottomFingerDownImage12.alpha = 1
                    }
                delay(0.7){
                    self.bottomFingerDownImage12.alpha = 0
                    self.bottomFingerMiddleImage11.alpha = 1
                    }
                delay(0.8){
                    self.bottomFingerMiddleImage11.alpha = 0
                    self.bottomFingerTopImage10.alpha = 1
                    }
                }, completion: { (Bool) in
                })
            
        }
        
        // Return teapot to original position
        UIView.animateWithDuration(1, delay: 2.5, options: [], animations: {
            self.bottomTeaPotImage5.transform = CGAffineTransformRotate(self.bottomTeaPotImage5.transform, CGFloat(-40 * M_PI / 180))
            self.bottomTeaPotImage5.center = CGPoint(x: -96.5, y: 1278)
        }) { (Bool) in
        }
        
        // Hand goes back
        UIView.animateWithDuration(0.5, delay: 3.2, options: [], animations: {
            self.bottomHandImage9.center = CGPoint(x: 385, y: 1430)
            self.bottomFingerTopImage10.center = CGPoint(x: 385, y: 1430)
            self.bottomFingerMiddleImage11.center = CGPoint(x: 385, y: 1430.5)
            self.bottomFingerDownImage12.center = CGPoint(x: 385, y: 1430.5)
            
            }) { (Bool) in
            self.tryItButton1b.alpha = 1
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
