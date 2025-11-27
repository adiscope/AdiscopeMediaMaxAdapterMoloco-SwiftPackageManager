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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.4.0"),
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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaMaxAdapterMoloco.zip",
            checksum: "0dc718aa6f2b3e1926bda40c20b7828f549568d9b175b40cd6e49a9efe3461bc"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterMolocoMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AppLovinMediationMolocoAdapter.xcframework.zip",
            checksum: "fcd3a1119f5a5ce01e00a50e6ea774cf0576280f780a6a1df3d4baa4dbae9ba8"
        ),
        .binaryTarget(
            name: "MolocoSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/MolocoSDK.xcframework.zip",
            checksum: "85d690dc4bc4c6bae3bbbae1a0d8b929019aeaf2db60b018bd0c3b26072e9974"
        ),
    ]
)
