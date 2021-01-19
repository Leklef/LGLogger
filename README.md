[![Swift Version][swift-image]][swift-url]
[![Build Status][travis-image]][travis-url]
[![License][license-image]][license-url]
<!--[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)-->
<!--[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/EZSwiftExtensions.svg)](https://img.shields.io/cocoapods/v/LGLogger.svg)-->
[![Platform](https://img.shields.io/cocoapods/p/LFAlertController.svg?style=flat)](http://cocoapods.org/pods/LGLogger)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)

# Product Name
<b>Easy-to-use & simple logging library.</b>

## Requirements

- iOS 11.0+
- Xcode 10.0

## Installation

#### CocoaPods
You can use [CocoaPods](http://cocoapods.org/) to install `LGLogger` by adding it to your `Podfile`:

```ruby
platform :ios, '11.0'
use_frameworks!
pod 'LGLogger'
```

To get the full benefits import `LGLogger` wherever you import UIKit

``` swift
import UIKit
import LGLogger
```
<!--#### Carthage
Create a `Cartfile` that lists the framework and run `carthage update`. Follow the [instructions](https://github.com/Carthage/Carthage#if-youre-building-for-ios) to add `$(SRCROOT)/Carthage/Build/iOS/YourLibrary.framework` to an iOS project.

```
github "Leklef/LGLogger"
```-->
<!--#### Manually
1. Download and drop ```YourLibrary.swift``` in your project.  
2. Congratulations!  -->

## Usage example

```swift
import LGLogger
Logger.log("log message", event: .debug, category: .ui)
```

## Contribute

We would love you for the contribution to **LGLogger**, check the ``LICENSE`` file for more info.

## Meta

Lenar Gilyazov – [@LenarGilyazov](https://twitter.com/lenar_gilyazov) – lgilyazovg@gmail.com

Distributed under the MIT license. See ``LICENSE`` for more information.

[swift-image]:https://img.shields.io/badge/swift-5.2-green.svg
[swift-url]: https://swift.org/
[license-image]: https://img.shields.io/badge/License-MIT-blue.svg
[license-url]: LICENSE
[travis-image]: https://img.shields.io/travis/dbader/node-datadog-metrics/master.svg?style=flat-square
[travis-url]: https://travis-ci.org/dbader/node-datadog-metrics
[codebeat-image]: https://codebeat.co/badges/c19b47ea-2f9d-45df-8458-b2d952fe9dad
[codebeat-url]: https://codebeat.co/projects/github-com-vsouza-awesomeios-com
