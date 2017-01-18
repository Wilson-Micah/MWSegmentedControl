# MWSegmentedControl
Custom control for setting use with a segmented control that allows multiple selection with custom titles.

![ScreenShot](https://github.com/MicahTWilson/MWSegmentedControl/blob/master/MWSegmentedControl/MWSegmentedControlVideo.gif)

Add MWSegmentedControl.swift to your project

Customize:                                                                         
//Set the tiles of the buttons you want to have as options. Ex. ```["Su", "M", "Tu", "W", "Th", "F", "Sa"]```
```swift
control.buttonTitles = [String]
```

//Set the buttons to be prepressed upon display                         
```swift
control.selectedIndexes = [Int]
```

//Set the border/Selection color                                                                         
```swift
control.borderColor = UIColor()
```

//Set the text color                                                                         
```swift
control.textColor = UIColor()
```

//Set the font                                                                         
```swift
control.font = UIFont()
```

//Allow selection for multiple segments, setting false will only allow single selection                                                                         
```swift
control.allowsMultipleSelection = Bool
```

```swift
Delegate: MWSegmentedControlDelegate                                                                         
optional func segmentDidChange(MWSegmentedControl, Int)
```
