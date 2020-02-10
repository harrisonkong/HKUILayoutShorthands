# <img src="./docs/logo256.jpg" width="40" height="40" alt="skyRoute66 logo" style="vertical-align:middle"> HKUILayoutShorthands #
![Swift](https://img.shields.io/static/v1?label=Swift&message=4.0%20or%20above&color=%23FF4400&style=plastic) ![iOS](https://img.shields.io/static/v1?label=iOS&&message=11.0%20or%20above&color=yellow&style=plastic) ![CocoaPod](https://img.shields.io/static/v1?label=pod&message=1.0.1&color=brightgreen&style=plastic) ![License](https://img.shields.io/static/v1?label=license&message=MIT&color=blue&style=plastic) ![Category](https://img.shields.io/static/v1?label=category&message=User%20Interface&color=blueviolet&style=plastic)
#### Harrison Kong's Shorthand methods for UI layout constraints ####

<img src="screenshots/8Plus_Landscape.png" width="300" /> <img src="screenshots/XS_Landscape.png" width="350" />

<img src="./docs/cloudline.png" alt="---line---">

## VERSION HISTORY ##

1.0.0 - 2020/01/16 - Initial release

1.0.1 - 2020/01/31 - New shorthand methods added

## MINIMUM REQUIREMENTS ##

**Swift** 4.0 or above

**iOS** 11.0 or above

<img src="./docs/cloudline.png" alt="---line---">

## WHAT IS IT? ##

If you have ever programmatically set up UI elements and layout constraints in Swift, you most likely wrote something like this:

```
  let myView = UIScrollView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
  view.addSubview(myView)
  myView.translatesAutoresizingMaskIntoConstraints = false
  myView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
  myView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
  myView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
  myView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
```

There is a lot of code just for just one element. If you have a bunch of them to lay out, your code becomes very long and not exactly easy to understand at a glance.

This is why I created these shorthand methods. The above code can simply be written as:

```
  let myView = UIScrollView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
  myView.anchorAllFourSidesToSafeAreaOf(view)
```

Isn't that much better?

### ANOTHER EXAMPLE ###

Similarly, if you just want to align horizontally and vertically center an element, you would write:

```
  let tableView = UITableView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))

  myView.addSubview(tableView)
  tableView.translatesAutoresizingMaskIntoConstraints = false
  tableView.centerXAnchor.constraint(equalTo: myView.centerXAnchor).isActive = true
  tableView.centerYAnchor.constraint(equalTo: myView.centerYAnchor).isActive = true
```

Using my shortcuts, you could just write:

```
  let tableView = UITableView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))

  myView.addSubview(tableView)
  tableView.anchorAlignCenterWith(myView)
```

### MORE EXAMPLES ###

Here are some more examples of what you can do in other scenarios:

```
  redView.anchorAlignHorizontalCentersWith(myView)

  greenView.anchorAlignRightsWith(redView)

  blueView.anchorSetWidthToWidthOf(someOtherView, multiplier: 0.5)

  let someViewHeightConstraint =
    someView.anchorSetHeightToWidthOf(anotherView)

  yellowView.setHeightToConstant(200.0)

  purpleView.anchorAlignLeftWithRightOf(orangeView, offset: 10.0)

  insetView.anchorAlignTopGtEqToTopOf(mapView)
```

As you can see, this reduces the amount of code and also improves readability. Most of the layout constraint scenarios are covered. See the separate user's guide.

<img src="./docs/cloudline.png" alt="---line---">

## Demo Application ##

Simply clone the [demo application](https://github.com/harrisonkong/HKUILayoutShorthandsDemo) and build and run.

<img src="./docs/cloudline.png" alt="---line---">

## HOW TO INSTALL IT ##

Use one of the following methods:

### 1. Using CocoaPod ###

The module is avabilable via CocoaPods Trunk. Below is an example podfile. If you already use a podfile for your project, all you have to do is add the line that specifies `HKUILayoutShorthands`. The other dependencies will also be automatically installed in the xcworkspace.

```
platform :ios, '11.0'

target 'MyTarget' do

  use_frameworks!

  pod 'HKUILayoutShorthands', '~> 1.0.1'
  # other pods for your project

end
```

Don't forget to import the module in your source code:

```
import HKUILayoutShorthands
```

### 2. BY INCLUDING THE SOURCE FILES ###

You can also simply include the following source files in your project:

```
HKUILayoutShorthands.swift
```

<img src="./docs/cloudline.png" alt="---line---">

## TO CUSTOMIZE IT ##

There are a lot of shortcuts in the file. You might want to delete the ones you don't use in order to cut down on size and build time.
