# MWSegmentedControl
Custom control for setting use with a segmented control that allows multiple selection with custom titles.

Add MWSegmentedControl.swift to your project

Customize:
.buttonTitles = [String]
.selectedIndexes = [Int]
.borderColor = UIColor()
.textColor = UIColor()
.font = UIFont()
.allowsMultipleSelection = Bool

Delegate: MWSegmentedControlDelegate
optional func segmentDidChange(MWSegmentedControl, Int)
