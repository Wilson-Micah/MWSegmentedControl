//
//  MWSegmentedControl.swift
//  90 Day
//
//  Created by Micah Wilson on 8/19/15.
//  Copyright (c) 2015 Micah Wilson. All rights reserved.
//

import UIKit

@objc protocol MWSegmentedControlDelegate {
    optional func segmentDidChange(control: MWSegmentedControl, value: Int)
}

class MWSegmentedControl: UIView {
    var buttonTitles = ["7", "21", "30", "60", "90"]
    let borderColor = UIColor(red:0.06, green:0.51, blue:1, alpha:1)
    let textColor = UIColor.darkGrayColor()
    var font = UIFont(name: "Avenir-Heavy", size: 36)
    var delegate: MWSegmentedControlDelegate?
    var selectedSegments = [String]()
    var selectedIndexes = [2]
    var allowMultipleSelection = false
    var value: Int!
    override func layoutSubviews() {
        self.layer.cornerRadius = 10
        self.layer.borderWidth = 2
        self.layer.borderColor = self.borderColor.CGColor
        self.layer.masksToBounds = true
        
        if self.subviews.count <= 0 {
            for (index, button) in buttonTitles.enumerate() {
                let buttonWidth = self.frame.width / CGFloat(buttonTitles.count)
                let buttonHeight = self.frame.height
                
                let newButton = UIButton(frame: CGRectMake(CGFloat(index) * buttonWidth, 0, buttonWidth, buttonHeight))
                newButton.setTitle(button, forState: .Normal)
                newButton.setTitleColor(self.textColor, forState: .Normal)
                newButton.titleLabel?.font = self.font!
                newButton.addTarget(self, action: "changeSegment:", forControlEvents: .TouchUpInside)
                newButton.layer.borderWidth = 1
                newButton.layer.borderColor = self.borderColor.CGColor
                newButton.tag = index
                newButton.showsTouchWhenHighlighted = true
                self.addSubview(newButton)
                
                for selected in selectedIndexes {
                    if selected == index {
                        self.changeSegment(newButton)
                    }
                }
            }
        }
    }
    
    func changeSegment(sender: UIButton) {
        if allowMultipleSelection {
            if sender.backgroundColor == borderColor {
                sender.backgroundColor = UIColor.clearColor()
                sender.setTitleColor(textColor, forState: .Normal)
                
                for (index, segment) in self.selectedSegments.enumerate() {
                    if segment == sender.titleLabel!.text! {
                        self.selectedSegments.removeAtIndex(index)
                        break
                    }
                }
                
            } else {
                sender.backgroundColor = borderColor
                sender.setTitleColor(UIColor.whiteColor(), forState: .Normal)
                self.value = NSString(string: sender.titleLabel!.text!).integerValue
                self.selectedSegments.append(self.buttonTitles[sender.tag])
                self.delegate?.segmentDidChange!(self, value: self.value)
            }
        } else {
            for subview in self.subviews {
                if subview.isKindOfClass(UIButton) {
                    (subview as! UIButton).setTitleColor(self.textColor, forState: .Normal)
                    (subview as! UIButton).backgroundColor = UIColor.clearColor()
                }
            }
            sender.backgroundColor = borderColor
            sender.setTitleColor(UIColor.whiteColor(), forState: .Normal)
            self.value = NSString(string: sender.titleLabel!.text!).integerValue
            self.delegate?.segmentDidChange!(self, value: self.value)
        }
        
    }
}
