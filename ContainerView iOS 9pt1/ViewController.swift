//
//  ViewController.swift
//  ContainerView iOS 9pt1
//
//  Created by Aaqib Hussain on 23/01/2016.
//  Copyright © 2016 Aaqib Hussain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var contain: UIView!
    
    var containerView: ContainerViewController?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func second(sender: AnyObject) {
        containerView!.segueIdentifierReceivedFromParent("buttonTwo")
        
    }
    
    @IBAction func first(sender: AnyObject) {
        
        containerView!.segueIdentifierReceivedFromParent("buttonOne")
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "container"{
            
            containerView = segue.destinationViewController as? ContainerViewController
            
            
        }
    }
    
    
    
}

