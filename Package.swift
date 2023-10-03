// swift-tools-version:5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PowerPack",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "PowerPack",
            targets: ["PowerPack"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/stonko1994/DelayedTransitionView", from: "1.0.0"),
        .package(url: "https://github.com/SwiftUIX/SwiftUIX", from: "0.1.0"),
        .package(url: "https://github.com/stonko1994/Marquee", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "PowerPack",
            dependencies: [
                "DelayedTransitionView",
                "SwiftUIX",
                "Marquee"
            ]
        ),
    ]
)
