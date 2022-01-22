// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AirSnap",
    platforms: [
        .iOS(.v10),
    ],
    products: [
        .library(
            name: "AirSnap",
            targets: ["AirSnapSDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "AirSnap",
            path: "AirSnapSDK.xcframework"
        )
    ]
)