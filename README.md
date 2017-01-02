Intrinsic
==========

A collection of useful Foundation utilities.


Usage
-----

Add the following into your Package.swift:

```
    dependencies: [
    	.Package(url: "https://github.com/tokyovigilante/CommonCrypto", majorVersion: 0, minor: 1)
    ]
```

Classes
-------

Class | Functions
----- | ---------
Array+Utils 		| Adds duplicate deletion and binary search to `Array`.
CFRange+Comparison 	| Makes `CFRange` conform to `Equatable`.
CGImage+Init 		| `CGImage` initialisation from `NSImage`.
CGImage+PixelArray	| Render a `CGImage` into a `[UInt8]` array.
Crypto				| Set of hash routines using `CommonCrypto` (Only available on Appla platforms).
Data+ArrayView		| Set of functions to extract various data types (`Int`, `Float` etc) from `Data`.
Date+Utils 			| ISO8601 `Date` format convenience utilities (only on macOS Sierra, iOS 10).
LocalStorage		| Convenience function to get the App Support directory on macOS and iOS.
LogPrint			| Basic severity-based logging.
NetworkOperation	| `NSOperation` subclass which wraps `URLSession` for easy scheduling.
QueueManager		| Provides an `OperationQueue` for `NetworkOperation`.
String+Hash			| Cryptographic hash convenience functions for `String`.
String+Utils 		| Search extensions for `String`.
SwiftRegex			| Regular expressions borrowed from [johnno1962/SwiftRegex](https://github.com/johnno1962/SwiftRegex)

Feedback
--------

ryan@testtoast.com


