//
//  ViewController.swift
//  MWSegmentedControl
//
//  Created by Micah Wilson on 9/8/15.
//  Copyright © 2015 Micah Wilson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, MWSegmentedControlDelegate {
    @IBOutlet weak var segmentControl: MWSegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Customize segmented control here.
        self.segmentControl.buttonTitles = ["Su", "M", "Tu", "W", "Th", "F", "Sa"]
        self.segmentControl.selectedIndexes = []
        self.segmentControl.allowMultipleSelection = true
        self.segmentControl.delegate = self
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func segmentDidChange(control: MWSegmentedControl, value: Int) {
        
    }

}

