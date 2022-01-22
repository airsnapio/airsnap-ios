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
            targets: ["AirSnap"]),
    ],
    targets: [
        .target(
            name: "AirSnap"
        )
        .binaryTarget(
            name: "AirSnap",
            path: "AirSnapSDK.xcframework"
        )
    ]
)