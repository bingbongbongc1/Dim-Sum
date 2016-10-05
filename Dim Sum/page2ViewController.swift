//
//  page2ViewController.swift
//  Dim Sum
//
//  Created by Leung, Shelley on 9/28/16.
//  Copyright © 2016 Leung, Shelley. All rights reserved.
//

import UIKit

class page2ViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var pageCount: UIView!
    @IBOutlet weak var page2ScrollView: UIScrollView!
    @IBOutlet weak var des1Page2: UILabel!
    @IBOutlet weak var des2Page2: UILabel!
    
    @IBOutlet weak var narcissusImage1L: UIImageView!
    @IBOutlet weak var puerImage2L: UIImageView!
    @IBOutlet weak var oolongImage3L: UIImageView!
    @IBOutlet weak var chrysanthemumImage4L: UIImageView!
    
    @IBOutlet weak var narcissusImage1: UIImageView!
    @IBOutlet weak var puerImage2: UIImageView!
    @IBOutlet weak var oolongImage3: UIImageView!
    @IBOutlet weak var chrysanthemumImage4: UIImageView!
    
    @IBOutlet weak var teaLabel: UIView!
    @IBOutlet weak var chineseLabel1: UILabel!
    @IBOutlet weak var narcissusLabel1: UILabel!
    @IBOutlet weak var chineseLabel2: UILabel!
    @IBOutlet weak var puerLabel2: UILabel!
    @IBOutlet weak var chineseLabel3: UILabel!
    @IBOutlet weak var oolongLabel3: UILabel!
    @IBOutlet weak var chineseLabel4: UILabel!
    @IBOutlet weak var chrysanthemumLabel4: UILabel!
    
    @IBOutlet weak var nextBtn: UIButton!
    
    
    
    // Arrays of initial transform values for images
    var xOffsets : [CGFloat] = [70, 128, -227, -44,0]
    var yOffsets : [CGFloat] = [0, -72, -30, 153,100]
    var scales : [CGFloat] = [2.2, 2, 2, 2]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        page2ScrollView.contentSize = CGSize(width: 320, height: 800)
        
        page2ScrollView.delegate = self
        
        pageCount.layer.cornerRadius = pageCount.frame.height / 2
        
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.5, delay: 0.5, options: [], animations: {
            self.des1Page2.alpha = 1
        }) { (Bool) in
        }
        
        UIView.animateWithDuration(1, delay: 1.5, options: [], animations: {
            self.des2Page2.alpha = 1
        }) { (Bool) in
        }
        UIView.animateWithDuration(0.2, delay: 3, options: [], animations: {
            self.narcissusImage1L.alpha = 1
        }) { (Bool) in
        }
        UIView.animateWithDuration(0.2, delay: 3.1, options: [], animations: {
            self.puerImage2L.alpha = 1
        }) { (Bool) in
        }
        UIView.animateWithDuration(0.2, delay: 3.2, options: [], animations: {
            self.oolongImage3L.alpha = 1
        }) { (Bool) in
        }
        UIView.animateWithDuration(0.2, delay: 3.3, options: [], animations: {
            self.chrysanthemumImage4L.alpha = 1
        }) { (Bool) in
        }

        
    }
    
    override func viewWillAppear(animated: Bool) {
        
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        
        narcissusImage1L.alpha = 0
        puerImage2L.alpha = 0
        oolongImage3L.alpha = 0
        chrysanthemumImage4L.alpha = 0
        
        chineseLabel1.alpha = 1
        narcissusLabel1.alpha = 1
        chineseLabel2.alpha = 1
        puerLabel2.alpha = 1
        chineseLabel3.alpha = 1
        oolongLabel3.alpha = 1
        chineseLabel4.alpha = 1
        chrysanthemumLabel4.alpha = 1
        
        narcissusImage1.alpha = 1
        puerImage2.alpha = 1
        oolongImage3.alpha = 1
        chrysanthemumImage4.alpha = 1
        
        // Content offset: 0 -> 252
        let offset = CGFloat(page2ScrollView.contentOffset.y)
        
        // Transformation for image 1
        let tx1 = convertValue(offset, r1Min: 0, r1Max: 252, r2Min: xOffsets[0], r2Max: 0)
        let ty1 = convertValue(offset, r1Min: 0, r1Max: 252, r2Min: yOffsets[0], r2Max: 0)
        let scale1 = convertValue(offset, r1Min: 0, r1Max: 252, r2Min: scales[0], r2Max: 1)
        
        narcissusImage1.transform = CGAffineTransformMakeTranslation(CGFloat(tx1), CGFloat(ty1))
        narcissusImage1.transform = CGAffineTransformScale(narcissusImage1.transform, CGFloat(scale1), CGFloat(scale1))
        
        // Transformation for image 2
        let tx2 = convertValue(offset, r1Min: 0, r1Max: 252, r2Min: xOffsets[1], r2Max: 0)
        let ty2 = convertValue(offset, r1Min: 0, r1Max: 252, r2Min: yOffsets[1], r2Max: 0)
        let scale2 = convertValue(offset, r1Min: 0, r1Max: 252, r2Min: scales[1], r2Max: 1)
        
        puerImage2.transform = CGAffineTransformMakeTranslation(CGFloat(tx2), CGFloat(ty2))
        puerImage2.transform = CGAffineTransformScale(puerImage2.transform, CGFloat(scale2), CGFloat(scale2))
        
        // Transformation for image 3
        let tx3 = convertValue(offset, r1Min: 0, r1Max: 252, r2Min: xOffsets[2], r2Max: 0)
        let ty3 = convertValue(offset, r1Min: 0, r1Max: 252, r2Min: yOffsets[2], r2Max: 0)
        let scale3 = convertValue(offset, r1Min: 0, r1Max: 252, r2Min: scales[2], r2Max: 1)
        
        oolongImage3.transform = CGAffineTransformMakeTranslation(CGFloat(tx3), CGFloat(ty3))
        oolongImage3.transform = CGAffineTransformScale(oolongImage3.transform, CGFloat(scale3), CGFloat(scale3))
        
        // Transformation for image 4
        let tx4 = convertValue(offset, r1Min: 0, r1Max: 252, r2Min: xOffsets[3], r2Max: 0)
        let ty4 = convertValue(offset, r1Min: 0, r1Max: 252, r2Min: yOffsets[3], r2Max: 0)
        let scale4 = convertValue(offset, r1Min: 0, r1Max: 252, r2Min: scales[3], r2Max: 1)
        
        chrysanthemumImage4.transform = CGAffineTransformMakeTranslation(CGFloat(tx4), CGFloat(ty4))
        chrysanthemumImage4.transform = CGAffineTransformScale(chrysanthemumImage4.transform, CGFloat(scale4), CGFloat(scale4))
        
        // Transformation for tea label
        let tx5 = convertValue(offset, r1Min: 0, r1Max: 252, r2Min: xOffsets[4], r2Max: 0)
        let ty5 = convertValue(offset, r1Min: 0, r1Max: 252, r2Min: yOffsets[4], r2Max: 0)
        
        teaLabel.transform = CGAffineTransformMakeTranslation(CGFloat(tx5), CGFloat(ty5))

    }
    
//    @IBAction func didTapPreBtn(sender: AnyObject) {
////        navigationController?.popViewControllerAnimated(true)
////        dismissViewControllerAnimated(true) { 
////         }
//        
//    }
    
    @IBAction func didTapNextBtn(sender: AnyObject) {
        performSegueWithIdentifier("page23Segue", sender: nil)
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
