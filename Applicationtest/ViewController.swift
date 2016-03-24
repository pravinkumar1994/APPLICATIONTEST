//
//  ViewController.swift
//  Applicationtest
//
//  Created by BLT0009-MACMI on 22/03/16.
//  Copyright © 2016 BLT0009-MACMI. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIAlertViewDelegate{

    @IBOutlet var table: UITableView!
    var elements:NSArray = ["Apple","Banana","Carrot"]
    override func viewDidLoad() {
        super.viewDidLoad()
        table.hidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return elements.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: TableViewCell = tableView.dequeueReusableCellWithIdentifier("cell1", forIndexPath: indexPath) as! TableViewCell
        cell.lb1.text = elements.objectAtIndex(indexPath.row) as! String
        return cell
    }


    @IBAction func Sayhello(sender: AnyObject) {
        
        let alert : UIAlertView = UIAlertView(title: "Alert", message: "HELLO WORLD!!!", delegate: self, cancelButtonTitle: "OK");
        
        alert.show()
     }
    
    @IBAction func Show(sender: AnyObject) {
        
        table.hidden = false
        
    }
    
    @IBAction func showimage(sender: AnyObject) {
        
        let viewcontroller = self.storyboard?.instantiateViewControllerWithIdentifier("View") as! ViewController1
self.navigationController?.pushViewController(viewcontroller, animated: true)
    }
   
}


