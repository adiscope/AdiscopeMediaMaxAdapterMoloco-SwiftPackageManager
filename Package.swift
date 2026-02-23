// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeMediaMaxAdapterMoloco",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AdiscopeMediaMaxAdapterMoloco",
            targets: ["AdiscopeMediaMaxAdapterMolocoTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.5.1"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxAdapterMolocoTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMaxAdapterMoloco"),
                .target(name: "AdiscopeMediaMaxAdapterMolocoMediationAdapter"),
                .target(name: "MolocoSDK"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterMoloco",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/AdiscopeMediaMaxAdapterMoloco.zip",
            checksum: "cad270c3c4d5be7ca8444702b291cec66d5565483732df84500b6e80bdfbc72c"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterMolocoMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/AppLovinMediationMolocoAdapter.xcframework.zip",
            checksum: "02f625f5ec197b00e4639c68d149b62968a9ffd50d88b981c076f9a5b11b42cd"
        ),
        .binaryTarget(
            name: "MolocoSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/MolocoSDK.xcframework.zip",
            checksum: "0e0deaec5993d71e13a67328ed4fd8ecc74f9bdb89527dbabc18126c3bdfb80b"
        ),
    ]
)
