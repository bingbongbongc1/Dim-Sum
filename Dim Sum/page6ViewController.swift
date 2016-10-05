//
//  page6ViewController.swift
//  Dim Sum
//
//  Created by Leung, Shelley on 9/28/16.
//  Copyright © 2016 Leung, Shelley. All rights reserved.
//

import UIKit

class page6ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var pageCount: UIView!
    @IBOutlet weak var page6ScrollView: UIScrollView!
    @IBOutlet weak var des1Page6: UILabel!
    
    @IBOutlet weak var waterChestnutImage1L: UIImageView!
    @IBOutlet weak var sesameRollImage2L: UIImageView!
    @IBOutlet weak var sesameBallImage3L: UIImageView!
    @IBOutlet weak var eggTartImage4L: UIImageView!
    @IBOutlet weak var lotusBunImage5L: UIImageView!
    
    @IBOutlet weak var waterChestnutImage1: UIImageView!
    @IBOutlet weak var sesameRollImage2: UIImageView!
    @IBOutlet weak var sesameBallImage3: UIImageView!
    @IBOutlet weak var eggTartImage4: UIImageView!
    @IBOutlet weak var lotusBunImage5: UIImageView!
    
    @IBOutlet weak var viewLabel: UIView!
    
    @IBOutlet weak var chineseLabel1: UILabel!
    @IBOutlet weak var chineseLabel2: UILabel!
    @IBOutlet weak var chineseLabel3: UILabel!
    @IBOutlet weak var chineseLabel4: UILabel!
    @IBOutlet weak var chineseLabel5: UILabel!

    @IBOutlet weak var englishLabel1: UILabel!
    @IBOutlet weak var englishLabel2: UILabel!
    @IBOutlet weak var englishLabel3: UILabel!
    @IBOutlet weak var englishLabel4: UILabel!
    @IBOutlet weak var englishLabel5: UILabel!
    
    // Arrays of initial transform values for images
    var xOffsets : [CGFloat] = [-171, -74, 48, 174.5, -70.5 , 0]
    var yOffsets : [CGFloat] = [119.5, -318, -245.5, 46.5, -328, 300]
    var scales : [CGFloat] = [1.5, 1.5, 1.5, 1.5, 1.5]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        page6ScrollView.contentSize = CGSize(width: 320, height: 900)
        
        page6ScrollView.delegate = self
        
        pageCount.layer.cornerRadius = pageCount.frame.height / 2


        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.5, delay: 0.5, options: [], animations: {
            self.des1Page6.alpha = 1
        }) { (Bool) in
        }
        
        UIView.animateWithDuration(0.2, delay: 1.5, options: [], animations: {
            self.waterChestnutImage1L.alpha = 1
        }) { (Bool) in
        }
        UIView.animateWithDuration(0.2, delay: 1.6, options: [], animations: {
            self.sesameRollImage2L.alpha = 1
        }) { (Bool) in
        }
        UIView.animateWithDuration(0.2, delay: 1.7, options: [], animations: {
            self.sesameBallImage3L.alpha = 1
        }) { (Bool) in
        }
        UIView.animateWithDuration(0.2, delay: 1.8, options: [], animations: {
            self.eggTartImage4L.alpha = 1
        }) { (Bool) in
        }
        UIView.animateWithDuration(0.2, delay: 1.9, options: [], animations: {
            self.lotusBunImage5L.alpha = 1
        }) { (Bool) in
        }
        
        
    }

    func scrollViewDidScroll(scrollView: UIScrollView) {
        
        waterChestnutImage1L.alpha = 0
        sesameRollImage2L.alpha = 0
        sesameBallImage3L.alpha = 0
        eggTartImage4L.alpha = 0
        lotusBunImage5L.alpha = 0
        
        waterChestnutImage1.alpha = 1
        sesameRollImage2.alpha = 1
        sesameBallImage3.alpha = 1
        eggTartImage4.alpha = 1
        lotusBunImage5.alpha = 1
        
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
        
        // Content offset: 0 -> 352
        let offset = CGFloat(page6ScrollView.contentOffset.y)
        
        
        // Transformation for image 1
        let tx1 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: xOffsets[0], r2Max: 0)
        let ty1 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: yOffsets[0], r2Max: 0)
        let scale1 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: scales[0], r2Max: 1)
        
        waterChestnutImage1.transform = CGAffineTransformMakeTranslation(CGFloat(tx1), CGFloat(ty1))
        waterChestnutImage1.transform = CGAffineTransformScale(waterChestnutImage1.transform, CGFloat(scale1), CGFloat(scale1))
        
        // Transformation for image 2
        let tx2 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: xOffsets[1], r2Max: 0)
        let ty2 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: yOffsets[1], r2Max: 0)
        let scale2 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: scales[1], r2Max: 1)
        
        sesameRollImage2.transform = CGAffineTransformMakeTranslation(CGFloat(tx2), CGFloat(ty2))
        sesameRollImage2.transform = CGAffineTransformScale(sesameRollImage2.transform, CGFloat(scale2), CGFloat(scale2))
        
        // Transformation for image 3
        let tx3 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: xOffsets[2], r2Max: 0)
        let ty3 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: yOffsets[2], r2Max: 0)
        let scale3 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: scales[2], r2Max: 1)
        
        sesameBallImage3.transform = CGAffineTransformMakeTranslation(CGFloat(tx3), CGFloat(ty3))
        sesameBallImage3.transform = CGAffineTransformScale(sesameBallImage3.transform, CGFloat(scale3), CGFloat(scale3))
        
        // Transformation for image 4
        let tx4 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: xOffsets[3], r2Max: 0)
        let ty4 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: yOffsets[3], r2Max: 0)
        let scale4 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: scales[3], r2Max: 1)
        
        eggTartImage4.transform = CGAffineTransformMakeTranslation(CGFloat(tx4), CGFloat(ty4))
        eggTartImage4.transform = CGAffineTransformScale(eggTartImage4.transform, CGFloat(scale4), CGFloat(scale4))
        
        // Transformation for image 5
        let tx5 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: xOffsets[4], r2Max: 0)
        let ty5 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: yOffsets[4], r2Max: 0)
        let scale5 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: scales[4], r2Max: 1)
        
        lotusBunImage5.transform = CGAffineTransformMakeTranslation(CGFloat(tx5), CGFloat(ty5))
        lotusBunImage5.transform = CGAffineTransformScale(lotusBunImage5.transform, CGFloat(scale5), CGFloat(scale5))
        
        // Transformation for view label
        let tx6 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: xOffsets[5], r2Max: 0)
        let ty6 = convertValue(offset, r1Min: 0, r1Max: 352, r2Min: yOffsets[5], r2Max: 0)
        
        viewLabel.transform = CGAffineTransformMakeTranslation(CGFloat(tx6), CGFloat(ty6))
        
    }

    @IBAction func didTapNextBtn(sender: AnyObject) {
        performSegueWithIdentifier("page67Segue", sender: nil)
    }
    
    @IBAction func didTapPageNumber(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Nzavigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
