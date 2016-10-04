//
//  page1ViewController.swift
//  Dim Sum
//
//  Created by Leung, Shelley on 9/27/16.
//  Copyright © 2016 Leung, Shelley. All rights reserved.
//

import UIKit

class page1ViewController: UIViewController, UIScrollViewDelegate {
    
    
    @IBOutlet weak var pageCount: UIView!
    @IBOutlet weak var page1ScrollView: UIScrollView!
    @IBOutlet weak var titlePage1: UILabel!
    @IBOutlet weak var des1Page1: UILabel!
    @IBOutlet weak var des2Page1: UILabel!
    
    @IBOutlet weak var teapotImage1: UIImageView!
    @IBOutlet weak var teacupImage1A: UIImageView!
    @IBOutlet weak var shumaiImage2: UIImageView!
    @IBOutlet weak var chickenFeetImage3: UIImageView!
    @IBOutlet weak var friedTaroImage4: UIImageView!
    
    @IBOutlet weak var teapotImage1L: UIImageView!
    @IBOutlet weak var teacupImage1AL: UIImageView!
    @IBOutlet weak var shumaiImage2L: UIImageView!
    @IBOutlet weak var chickFeetImage3L: UIImageView!
    @IBOutlet weak var friedTaroImage4L: UIImageView!
    
    
    
    // Arrays of initial transform values for images
    var xOffsets : [CGFloat] = [12, -0.5, -75.5, 199, -62]
    var yOffsets : [CGFloat] = [0, -22.5, -116.5, -213, -140.5]
    var scales : [CGFloat] = [1.25, 1.25, 1.25, 1.25, 1.25]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        page1ScrollView.contentSize = CGSize(width: 320, height: 900)
        
        page1ScrollView.delegate = self
        
        pageCount.layer.cornerRadius = pageCount.frame.height / 2
        
        UIView.animateWithDuration(0.5, delay: 0.5, options: [], animations: {
            self.des1Page1.alpha = 1
            }) { (Bool) in
        }
       
        UIView.animateWithDuration(1, delay: 1.5, options: [], animations: {
            self.des2Page1.alpha = 1
        }) { (Bool) in
        }
        
        UIView.animateWithDuration(0.2, delay: 3, options: [], animations: {
            self.teapotImage1L.alpha = 1
            }) { (Bool) in
        }
        
        
        UIView.animateWithDuration(0.2, delay: 3.1, options: [], animations: {
            self.teacupImage1AL.alpha = 1
        }) { (Bool) in
        }
        
        UIView.animateWithDuration(0.2, delay: 3.2, options: [], animations: {
            self.shumaiImage2L.alpha = 1
        }) { (Bool) in
        }
        
        UIView.animateWithDuration(0.2, delay: 3.3, options: [], animations: {
            self.chickFeetImage3L.alpha = 1
        }) { (Bool) in
        }
        
        UIView.animateWithDuration(0.2, delay: 3.4, options: [], animations: {
            self.friedTaroImage4L.alpha = 1
        }) { (Bool) in
        }


        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func didTapPreBtn(sender: AnyObject) {
        dismissViewControllerAnimated(true) { 
            
            
        }
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        
        teapotImage1L.alpha = 0
        teacupImage1AL.alpha = 0
        shumaiImage2L.alpha = 0
        chickFeetImage3L.alpha = 0
        friedTaroImage4L.alpha = 0
        
        teapotImage1.alpha = 1
        teacupImage1A.alpha = 1
        shumaiImage2.alpha = 1
        chickenFeetImage3.alpha = 1
        friedTaroImage4.alpha = 1
        
        // Content offset: 0 -> 352
        let offset = CGFloat(page1ScrollView.contentOffset.y)
        
        // Transformation for image 1
        let tx1 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: xOffsets[0], r2Max: 0)
        let ty1 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: yOffsets[0], r2Max: 0)
        let scale1 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: scales[0], r2Max: 1)
        
        teapotImage1.transform = CGAffineTransformMakeTranslation(CGFloat(tx1), CGFloat(ty1))
        teapotImage1.transform = CGAffineTransformScale(teapotImage1.transform, CGFloat(scale1), CGFloat(scale1))
 
        // Transformation for image 1A
        let tx2 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: xOffsets[1], r2Max: 0)
        let ty2 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: yOffsets[1], r2Max: 0)
        let scale2 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: scales[1], r2Max: 1)
        
        teacupImage1A.transform = CGAffineTransformMakeTranslation(CGFloat(tx2), CGFloat(ty2))
        teacupImage1A.transform = CGAffineTransformScale(teacupImage1A.transform, CGFloat(scale2), CGFloat(scale2))
        
        // Transformation for image 2
        let tx3 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: xOffsets[2], r2Max: 0)
        let ty3 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: yOffsets[2], r2Max: 0)
        let scale3 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: scales[2], r2Max: 1)
        
        shumaiImage2.transform = CGAffineTransformMakeTranslation(CGFloat(tx3), CGFloat(ty3))
        shumaiImage2.transform = CGAffineTransformScale(shumaiImage2.transform, CGFloat(scale3), CGFloat(scale3))
        
        // Transformation for image 3
        let tx4 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: xOffsets[3], r2Max: 0)
        let ty4 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: yOffsets[3], r2Max: 0)
        let scale4 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: scales[3], r2Max: 1)
        
        chickenFeetImage3.transform = CGAffineTransformMakeTranslation(CGFloat(tx4), CGFloat(ty4))
        chickenFeetImage3.transform = CGAffineTransformScale(chickenFeetImage3.transform, CGFloat(scale4), CGFloat(scale4))
        
        // Transformation for image 4
        let tx5 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: xOffsets[4], r2Max: 0)
        let ty5 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: yOffsets[4], r2Max: 0)
        let scale5 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: scales[4], r2Max: 1)
        
        friedTaroImage4.transform = CGAffineTransformMakeTranslation(CGFloat(tx5), CGFloat(ty5))
        friedTaroImage4.transform = CGAffineTransformScale(friedTaroImage4.transform, CGFloat(scale5), CGFloat(scale5))
        
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
