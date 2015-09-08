# MWSegmentedControl
Custom control for setting use with a segmented control that allows multiple selection with custom titles.

https://github.com/MicahTWilson/MWSegmentedControl/blob/master/MWSegmentedControl/MWSegmentedControlVideo.gif

Add MWSegmentedControl.swift to your project

Customize:                                                                         
//Set the tiles of the buttons you want to have as options. Ex. ["Su", "M", "Tu", "W", "Th", "F", "Sa"] 
control.buttonTitles = [String]

//Set the buttons to be prepressed upon display                         
control.selectedIndexes = [Int]

//Set the border/Selection color                                                                         
control.borderColor = UIColor()

//Set the text color                                                                         
control.textColor = UIColor()

//Set the font                                                                         
control.font = UIFont()

//Allow selection for multiple segments, setting false will only allow single selection                                                                         
control.allowsMultipleSelection = Bool

Delegate: MWSegmentedControlDelegate                                                                         
optional func segmentDidChange(MWSegmentedControl, Int)
