//
//  ViewController2.swift
//  Applicationtest
//
//  Created by BLT0009-MACMI on 24/03/16.
//  Copyright © 2016 BLT0009-MACMI. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet var image2: UIImageView!
    var array = NSString()

    override func viewDidLoad() {
        super.viewDidLoad()
        image2.image  = UIImage(named: array as String)
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
