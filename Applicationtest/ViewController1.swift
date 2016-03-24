//
//  ViewController1.swift
//  Applicationtest
//
//  Created by BLT0009-MACMI on 22/03/16.
//  Copyright © 2016 BLT0009-MACMI. All rights reserved.
//

import UIKit

class ViewController1: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate{

    @IBOutlet var Collection: UICollectionView!
    var images:NSArray = ["Food1.jpeg","Food2.jpeg","Food3.jpeg","Food4.jpeg","Food5.jpeg","Food6.jpeg","Food7.jpeg","Food8.jpeg","Food10.jpeg","Food11.jpeg","Food12.jpeg"]
     var selectedindex: Int = Int ()
    override func viewDidLoad() {
        super.viewDidLoad()
Collection.delegate = self
        // Do any additional setup after loading the view.
    }

   
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
     func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell:CollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("cell2",forIndexPath: indexPath) as! CollectionViewCell
        let image = UIImage(named: images[indexPath.row] as! String)
        cell.img.image = image
        return cell
    }
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
    {
        print("Cell \(indexPath.row) selected")
        //        let row = [indexPath.row]
        selectedindex = indexPath.row
        
        performSegueWithIdentifier("segue1", sender: nil)
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        
        if segue.identifier == "segue1"
        {
            let buddyObj: AnyObject = self.images[selectedindex]
            //            let buddyObj1: AnyObject = self.carList[selectedIndex]
            //            let buddyobj2: AnyObject = self.carLogo[selectedIndex]
            print(buddyObj)
            
            if let desView: ViewController2 = segue.destinationViewController as? ViewController2
            {
                
                desView.array = buddyObj as! NSString
                //                desView.mylabel = buddyObj1 as! NSString
                //                desView.myLogo = buddyobj2 as! NSString
                
            }
            
        }

    
    
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