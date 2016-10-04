//
//  listViewController.swift
//  Dim Sum
//
//  Created by Leung, Shelley on 10/3/16.
//  Copyright © 2016 Leung, Shelley. All rights reserved.
//

import UIKit

struct listTitle {
    var pageNumber: String!
    var pageTitle: String!
    
    init (pageNumber: String, pageTitle: String) {
        self.pageNumber = pageNumber
        self.pageTitle = pageTitle
    
    }
  }

var listTable = [
    listTitle(pageNumber: "0.", pageTitle: "The Dim Sum App"),
    listTitle(pageNumber: "1.", pageTitle: "What’s dim sum?"),
    listTitle(pageNumber: "2.", pageTitle: "Pick your tea"),
    listTitle(pageNumber: "3.", pageTitle: "Ways to order"),
    listTitle(pageNumber: "4.", pageTitle: "Family style"),
    listTitle(pageNumber: "5.", pageTitle: "Savory dim sum"),
    listTitle(pageNumber: "6.", pageTitle: "Sweet dim sum"),
    listTitle(pageNumber: "7.", pageTitle: "How many did you eat?"),
    listTitle(pageNumber: "8.", pageTitle: "Refill water"),
    listTitle(pageNumber: "9.", pageTitle: "Tea pouring custom"),
    listTitle(pageNumber: "10.", pageTitle: "Ready for dim sum?")

]

class listViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var listTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listTableView.dataSource = self
        listTableView.delegate = self

        // Do any additional setup after loading the view.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return listTable.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = listTableView.dequeueReusableCellWithIdentifier("listCell") as! listTableViewCell
        
        cell.numberLabel.text = listTable[indexPath.row].pageNumber
        cell.titleLabel.text = listTable[indexPath.row].pageTitle
        
        return cell
    }
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        let index = indexPath.row
//        
//        if index == 0 {
//                performSegueWithIdentifier("page01Segue", sender: self)
//                }
//        else if index == 1 {
//                    performSegueWithIdentifier("page12Segue", sender: self)
//                }
//        else if index == 2 {
//                    performSegueWithIdentifier("page23Segue", sender: self)
//                }
//        else if index == 1 {
//                    performSegueWithIdentifier("page34Segue", sender: self)
//                }
//    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let index = indexPath.row
        
        print("my index is \(index)")
        
        if index == 0 {
            performSegueWithIdentifier("listSeguePage00", sender: self)
        }
        else if index == 1 {
             performSegueWithIdentifier("listSeguePage01", sender: self)
        }
        else if index == 2 {
            performSegueWithIdentifier("listSeguePage02", sender: self)
        }
        else if index == 3 {
            performSegueWithIdentifier("listSeguePage03", sender: self)
        }
        else if index == 4 {
            performSegueWithIdentifier("listSeguePage04", sender: self)
        }
        else if index == 5 {
            performSegueWithIdentifier("listSeguePage05", sender: self)
        }
        else if index == 6 {
            performSegueWithIdentifier("listSeguePage06", sender: self)
        }
        else if index == 7 {
            performSegueWithIdentifier("listSeguePage07", sender: self)
        }
        else if index == 8 {
            performSegueWithIdentifier("listSeguePage08", sender: self)
        }
        else if index == 9 {
            performSegueWithIdentifier("listSeguePage09", sender: self)
        }
        else if index == 10 {
            performSegueWithIdentifier("listSeguePage10", sender: self)
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
