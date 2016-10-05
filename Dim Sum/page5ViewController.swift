//
//  page5ViewController.swift
//  Dim Sum
//
//  Created by Leung, Shelley on 9/28/16.
//  Copyright © 2016 Leung, Shelley. All rights reserved.
//

import UIKit

class page5ViewController: UIViewController, UIScrollViewDelegate {
    
    
    @IBOutlet weak var pageCount: UIView!
    @IBOutlet weak var page5ScrollView: UIScrollView!
    @IBOutlet weak var des1Page5: UILabel!
    
    @IBOutlet weak var beefBallImage1L: UIImageView!
    @IBOutlet weak var potStickerImage2L: UIImageView!
    @IBOutlet weak var spareRibsImage3L: UIImageView!
    @IBOutlet weak var turnipCakeImage4L: UIImageView!
    @IBOutlet weak var congeeImage5L: UIImageView!
    
    @IBOutlet weak var beefBallImage1: UIImageView!
    @IBOutlet weak var potStickerImage2: UIImageView!
    @IBOutlet weak var spareRibsImage3: UIImageView!
    @IBOutlet weak var turnipCakeImage4: UIImageView!
    @IBOutlet weak var congeeImage5: UIImageView!
    
    @IBOutlet weak var viewLabel: UIView!

    @IBOutlet weak var chineseLabel1: UILabel!
    @IBOutlet weak var englishLabel1: UILabel!
    @IBOutlet weak var chineseLabel2: UILabel!
    @IBOutlet weak var englishLabel2: UILabel!
    @IBOutlet weak var chineseLabel3: UILabel!
    @IBOutlet weak var englishLabel3: UILabel!
    @IBOutlet weak var chineseLabel4: UILabel!
    @IBOutlet weak var englishLabel4: UILabel!
    @IBOutlet weak var chineseLabel5: UILabel!
    @IBOutlet weak var englishLabel5: UILabel!
    
    // Arrays of initial transform values for images
    var xOffsets : [CGFloat] = [-53, 183.5, 50, -203, -80, 0]
    var yOffsets : [CGFloat] = [-126.5, -332, -46, -224.5, 35, 300]
    var scales : [CGFloat] = [1.5, 1.5, 1.5, 1.5, 1.5]


    override func viewDidLoad() {
        super.viewDidLoad()
        
        page5ScrollView.contentSize = CGSize(width: 320, height: 890)
        
        page5ScrollView.delegate = self
        
        pageCount.layer.cornerRadius = pageCount.frame.height / 2


        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.5, delay: 0.5, options: [], animations: {
            self.des1Page5.alpha = 1
        }) { (Bool) in
        }
        
        UIView.animateWithDuration(0.2, delay: 1.5, options: [], animations: {
            self.beefBallImage1L.alpha = 1
        }) { (Bool) in
        }
        UIView.animateWithDuration(0.2, delay: 1.6, options: [], animations: {
            self.potStickerImage2L.alpha = 1
        }) { (Bool) in
        }
        UIView.animateWithDuration(0.2, delay: 1.7, options: [], animations: {
            self.spareRibsImage3L.alpha = 1
        }) { (Bool) in
        }
        UIView.animateWithDuration(0.2, delay: 1.8, options: [], animations: {
            self.turnipCakeImage4L.alpha = 1
        }) { (Bool) in
        }
        UIView.animateWithDuration(0.2, delay: 1.9, options: [], animations: {
            self.congeeImage5L.alpha = 1
        }) { (Bool) in
        }
        
        
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        
        beefBallImage1L.alpha = 0
        potStickerImage2L.alpha = 0
        spareRibsImage3L.alpha = 0
        turnipCakeImage4L.alpha = 0
        congeeImage5L.alpha = 0
        
        beefBallImage1.alpha = 1
        potStickerImage2.alpha = 1
        spareRibsImage3.alpha = 1
        turnipCakeImage4.alpha = 1
        congeeImage5.alpha = 1
        
        chineseLabel1.alpha = 1
        chineseLabel2.alpha = 1
        chineseLabel3.alpha = 1
        chineseLabel4.alpha = 1
        chineseLabel5.alpha = 1
        
        englishLabel1.alpha = 1
        englishLabel2.alpha = 1
        englishLabel3.alpha = 1
        englishLabel4.alpha = 1
        englishLabel5.alpha = 1
        
        // Content offset: 0 -> 342
        let offset = CGFloat(page5ScrollView.contentOffset.y)

        
        // Transformation for image 1
        let tx1 = convertValue(offset, r1Min: 0, r1Max: 342, r2Min: xOffsets[0], r2Max: 0)
        let ty1 = convertValue(offset, r1Min: 0, r1Max: 342, r2Min: yOffsets[0], r2Max: 0)
        let scale1 = convertValue(offset, r1Min: 0, r1Max: 342, r2Min: scales[0], r2Max: 1)
        
        beefBallImage1.transform = CGAffineTransformMakeTranslation(CGFloat(tx1), CGFloat(ty1))
        beefBallImage1.transform = CGAffineTransformScale(beefBallImage1.transform, CGFloat(scale1), CGFloat(scale1))
        
        // Transformation for image 2
        let tx2 = convertValue(offset, r1Min: 0, r1Max: 342, r2Min: xOffsets[1], r2Max: 0)
        let ty2 = convertValue(offset, r1Min: 0, r1Max: 342, r2Min: yOffsets[1], r2Max: 0)
        let scale2 = convertValue(offset, r1Min: 0, r1Max: 342, r2Min: scales[1], r2Max: 1)
        
        potStickerImage2.transform = CGAffineTransformMakeTranslation(CGFloat(tx2), CGFloat(ty2))
        potStickerImage2.transform = CGAffineTransformScale(potStickerImage2.transform, CGFloat(scale2), CGFloat(scale2))
        
        // Transformation for image 3
        let tx3 = convertValue(offset, r1Min: 0, r1Max: 342, r2Min: xOffsets[2], r2Max: 0)
        let ty3 = convertValue(offset, r1Min: 0, r1Max: 342, r2Min: yOffsets[2], r2Max: 0)
        let scale3 = convertValue(offset, r1Min: 0, r1Max: 342, r2Min: scales[2], r2Max: 1)
        
        spareRibsImage3.transform = CGAffineTransformMakeTranslation(CGFloat(tx3), CGFloat(ty3))
        spareRibsImage3.transform = CGAffineTransformScale(spareRibsImage3.transform, CGFloat(scale3), CGFloat(scale3))
        
        // Transformation for image 4
        let tx4 = convertValue(offset, r1Min: 0, r1Max: 342, r2Min: xOffsets[3], r2Max: 0)
        let ty4 = convertValue(offset, r1Min: 0, r1Max: 342, r2Min: yOffsets[3], r2Max: 0)
        let scale4 = convertValue(offset, r1Min: 0, r1Max: 342, r2Min: scales[3], r2Max: 1)
        
        turnipCakeImage4.transform = CGAffineTransformMakeTranslation(CGFloat(tx4), CGFloat(ty4))
        turnipCakeImage4.transform = CGAffineTransformScale(turnipCakeImage4.transform, CGFloat(scale4), CGFloat(scale4))
        
        // Transformation for image 5
        let tx5 = convertValue(offset, r1Min: 0, r1Max: 342, r2Min: xOffsets[4], r2Max: 0)
        let ty5 = convertValue(offset, r1Min: 0, r1Max: 342, r2Min: yOffsets[4], r2Max: 0)
        let scale5 = convertValue(offset, r1Min: 0, r1Max: 342, r2Min: scales[4], r2Max: 1)
        
       congeeImage5.transform = CGAffineTransformMakeTranslation(CGFloat(tx5), CGFloat(ty5))
        congeeImage5.transform = CGAffineTransformScale(congeeImage5.transform, CGFloat(scale5), CGFloat(scale5))
        
        // Transformation for view label
        let tx6 = convertValue(offset, r1Min: 0, r1Max: 342, r2Min: xOffsets[5], r2Max: 0)
        let ty6 = convertValue(offset, r1Min: 0, r1Max: 342, r2Min: yOffsets[5], r2Max: 0)
        
        viewLabel.transform = CGAffineTransformMakeTranslation(CGFloat(tx6), CGFloat(ty6))

    }

    
    @IBAction func didTapNextBtn(sender: AnyObject) {
        performSegueWithIdentifier("page56Segue", sender: nil)
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
