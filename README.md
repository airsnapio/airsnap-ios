# AirSnap for iOS

## Installation

**CocoaPods**

Add to your `Podfile`

```
pod 'AirSnap'
```

Then run

```
$ pod install
```

**Carthage**

Currently unsupported. Please request if you'd like to see support here.

**Swift Package Manager**

Currently unsupported. Please request if you'd like to see support here.

## Usage

**Swift**

```swift
// AppDelegate.swift
import AirSnapSDK

func application(...) -> Bool {
    ...

    AirSnap.start(withAppKey: "<api-key>", privacyRule: .mask) // .mask or .unmask
    AirSnap.setUser(id: "user@example.com")
}
```

**Objective-C**

```objc
// AppDelegate.m
#import <AirSnapSDK/AirSnapSDK-Swift.h>

- (BOOL)application:... {
    ...

    [AirSnap startWithAppKey:@"<api-key>" privacyRule:PrivacyRuleUnmask]; // PrivacyRuleUnmask or PrivacyRuleMask
    [AirSnap setUserWithId:@"user@example.com"]
}
```
