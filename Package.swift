// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "renovate-spm-demo",
    products: [
        .library(
            name: "renovate-spm-demo",
            targets: ["renovate-spm-demo"]),
    ],
    dependencies: [
            .package(url: "https://github.com/bdolewski-intellias/renovate-spm-dependency", .upToNextMajor(from: "1.0.0")),
        ],
    targets: [
        .target(
            name: "renovate-spm-demo"),
        .testTarget(
            name: "renovate-spm-demoTests",
            dependencies: ["renovate-spm-demo"]),
    ]
)
