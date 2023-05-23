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
        .package(url: "https://github.com/stonko1994/DelayedTransitionView", exact: "1.0.0"),
        .package(url: "https://github.com/SwiftUIX/SwiftUIX", exact: "0.1.4"),
        .package(url: "https://github.com/stonko1994/Marquee", exact: "0.4.0-rc.2"),
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
