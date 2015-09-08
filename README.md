# MWSegmentedControl
Custom control for setting use with a segmented control that allows multiple selection with custom titles.

Add MWSegmentedControl.swift to your project

Customize:
//Set the tiles of the buttons you want to have as options. Ex. ["Su", "M", "Tu", "W", "Th", "F", "Sa"]
.buttonTitles = [String]

//Set the buttons to be prepressed upon display
.selectedIndexes = [Int]

//Set the border/Selection color
.borderColor = UIColor()

//Set the text color
.textColor = UIColor()

//Set the font
.font = UIFont()

//Allow selection for multiple segments, setting false will only allow single selection
.allowsMultipleSelection = Bool

Delegate: MWSegmentedControlDelegate
optional func segmentDidChange(MWSegmentedControl, Int)
