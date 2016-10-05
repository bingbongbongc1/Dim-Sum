//
//  detailViewController.swift
//  Dim Sum
//
//  Created by Leung, Shelley on 10/1/16.
//  Copyright © 2016 Leung, Shelley. All rights reserved.
//

import UIKit
import AVFoundation

var dimsumAudioPlayer = AVAudioPlayer()

class detailViewController: UIViewController {
    
    @IBOutlet weak var chineseLabel: UILabel!
    @IBOutlet weak var englishLabel: UILabel!
    @IBOutlet weak var dimSumImageBig: UIImageView!
    @IBOutlet weak var details: UILabel!
    @IBOutlet weak var ingredient1: UIImageView!
    @IBOutlet weak var ingredient2: UIImageView!
    @IBOutlet weak var ingredient3: UIImageView!
    @IBOutlet weak var ingredient4: UIImageView!
    @IBOutlet weak var ingredient5: UIImageView!
    
    var importedDimSum: dimSumData!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        details.sizeToFit()
        
        chineseLabel.text = importedDimSum.chineseName
        englishLabel.text = importedDimSum.englishName
        dimSumImageBig.image = importedDimSum.dimSumImage
        details.text = importedDimSum.description
        ingredient1.image = importedDimSum.ingredients[0]
        ingredient2.image = importedDimSum.ingredients[1]
        ingredient3.image = importedDimSum.ingredients[2]
        ingredient4.image = importedDimSum.ingredients[3]
        ingredient5.image = importedDimSum.ingredients[4]

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapBack(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func didTapSound(sender: AnyObject) {
        
        let myPath = NSBundle.mainBundle().pathForResource(importedDimSum.sound, ofType: nil)
        
        if let myPath = myPath {
            
            let url = NSURL(fileURLWithPath: myPath)
            
            do {
                try myAudioPlayer = AVAudioPlayer(contentsOfURL: url)
                myAudioPlayer.play()
            }
            catch {
                print("Can't play sound!")
            }
        }
        else {
            print("AHH!")
            
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
