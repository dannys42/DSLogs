# DSLogs

[![CI Status](http://img.shields.io/travis/dannys42/DSLogs.svg?style=flat)](https://travis-ci.org/dannys42/DSLogs)
[![Version](https://img.shields.io/cocoapods/v/DSLogs.svg?style=flat)](http://cocoapods.org/pods/DSLogs)
[![License](https://img.shields.io/cocoapods/l/DSLogs.svg?style=flat)](http://cocoapods.org/pods/DSLogs)
[![Platform](https://img.shields.io/cocoapods/p/DSLogs.svg?style=flat)](http://cocoapods.org/pods/DSLogs)


## Description

DSLogs provides a very simple set of macros that wrap around NSLog().

When releasing apps to the App Store, it's usually good to disable NSLog().  These macros provide a simple way to manage this.

## Usage

Code                | Console Output
--------------------|----------------------
DLog(@"Message");   | <FILE:LineNum> Message
WLog(@"Message");   | <FILE:LineNum> WARNING: Message
ELog(@"Message");   | <FILE:LineNum> ERROR: Message


When ENABLE_LOGS is not specified, DLog() resolves to a no-op.


## Requirements

## Installation

DSLogs is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "DSLogs"
```

To enable DLog(), you will need to add some compile-time settings.  Go to your project build settings.

For Objective-C, under Custom Compiler Flags, add the following to Other C Flags:
    Debug:      -DENABLE_LOGS=1
    Release:    -DENABLE_LOGS=0

For Swift, under Custom Flags, add the following to your Active Compilation Conditoins:
    Debug:      ENABLE_LOGS

Note that for swift 

For Objective-C, you should add the following to a common header file:

```c
#import <DSLogs.h>
```

For Swift, you will need to add the following where you expect to use DSLogs:

```swift
import DSLogs
```


## Author

Danny Sung, danny@dannysung.com

## License

DSLogs is available under the MIT license. See the LICENSE file for more info.


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/dannys42/dslogs/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

