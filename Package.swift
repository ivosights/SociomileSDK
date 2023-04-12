// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SociomileSDK",
    platforms: [
      .iOS(.v14)
    ],
    products: [
        .library(
            name: "SociomileSDK",
            targets: ["SociomileSDK"]),//, "App", "Flutter", "FlutterPluginRegistrant"]),
    ],
//    dependencies: [
//        .package(url: "https://github.com/Meynisa/sociomile-app-sdk-ios", from: "0.0.1"),
//        .package(url: "https://github.com/Meynisa/sociomile-flutter-sdk-ios", from: "0.0.1"),
//        .package(url: "https://github.com/Meynisa/sociomile-plugin-registrant-sdk-ios", from: "0.0.1")
//        ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
          name: "SociomileSDK",
          url: "https://sociomile-sdk.s3.ap-southeast-1.amazonaws.com/sociomile-ios-sdk/sandbox/0.0.2/SociomileSDK.xcframework.zip",
          checksum: "89d7aa26e90ea100f931e21c27f3425351bc662e9b42bd1e465b66b98a5feffa"
        )
    ]
)
