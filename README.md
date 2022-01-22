# AirSnap iOS SDK

**Session Replay for Mobile Apps**

Build the perfect digital experience by seeing exactly how your customers are using your app.

https://www.airsnap.io/

## Installation

### CocoaPods

Add to your `Podfile`

```
pod 'AirSnap'
```

Then run

```
$ pod install
```

### Swift Package Manager

Add to your `Package.swift`

```swift
import PackageDescription

let package = Package(
    dependencies: [
        .Package(url: "https://github.com/airsnapio/airsnap-ios")
    ]
)
```

### Carthage

Currently unsupported. Please create an issue or contact us if you'd like to see support.

## Usage

### Swift

```swift
// AppDelegate.swift
import AirSnapSDK

func application(...) -> Bool {
    ...
    AirSnap.start(withAppKey: "<api-key>", privacyRule: .mask)
    AirSnap.setUser(id: "user@example.com")
}
```

### Objective-C

```objc
// AppDelegate.m
#import <AirSnapSDK/AirSnapSDK-Swift.h>

- (BOOL)application:... {
    ...
    [AirSnap startWithAppKey:@"<api-key>" privacyRule:PrivacyRuleUnmask];
    [AirSnap setUserWithId:@"user@example.com"]
}
```

## Privacy Mask

When privacy masking is enabled, text, images, user inputs, and network calls are removed from the session. This process occurs on the device, meaning **sensitive information never leaves your user's device!**

AirSnap prioritizes privacy and therefore enables privacy masking by default. You can disable the privacy mask by passing the following parameter to `AirSnap.start`

```swift
AirSnap.start(withAppKey: "<api-key>", privacyRule: .unmask)
```

## API

**`AirSnap.start(withAppKey: String, privacyRule: .mask | .unmask)`**

Starts a session with the specified privacy rule. Privacy masking is enabled by default.

**`AirSnap.sessionId: string`**

Returns the current session ID.

**`AirSnap.userId: string`**

Returns the user ID that is used to distinguish users. This can be a custom identifier that you set, otherwise it will use the [IDFV Device](https://developer.apple.com/documentation/uikit/uidevice/1620059-identifierforvendor) ID by default.

**`AirSnap.setUser(id: String?)`**

Sets the user ID that is used to distinguish users. This can be the internal identifier for your application. If param is an empty string or null, it will reset the identifier back to the Device ID.

**`AirSnap.captureException(issue: Issue, level: error | warning | info, context?: [String: String])`**

**WIP**
Captures the exception

## Contact Us

If you run into any issues with AirSnap or would just like to drop by for a hello, please contact us at hi@airsnap.io :blush:
