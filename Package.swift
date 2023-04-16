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
            targets: ["SociomileSDK"]),
    ],
//    dependencies: [
//        .package(url: "https://github.com/Meynisa/sociomile-app-sdk-ios", from: "0.0.2"),
//        .package(url: "https://github.com/Meynisa/sociomile-flutter-sdk-ios", from: "0.0.2"),
//        .package(url: "https://github.com/Meynisa/sociomile-plugin-registrant-sdk-ios", from: "0.0.2")
//        ],
    targets: [
        .binaryTarget(
            name: "SociomileSDK",
            path: "./Sources/SociomileSDK.xcframework")
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
//        .binaryTarget(
//            name: "SociomileSDK",
//            url: "https://sociomile-sdk.s3.ap-southeast-1.amazonaws.com/sociomile-ios-sdk/sandbox/0.0.2/SociomileSDK.xcframework.zip",
//            checksum: "89d7aa26e90ea100f931e21c27f3425351bc662e9b42bd1e465b66b98a5feffa"
//        ),
//        .binaryTarget(
//            name: "App",
//            url: "https://sociomile-sdk.s3.ap-southeast-1.amazonaws.com/sociomile-ios-sdk/sandbox/0.0.2/App.xcframework.zip",
//            checksum: "7b27a575ae9c2738e370891f30df0a9d8fd1d15930892ca8cf7362fb1f1d4097"
//        ),
//        .binaryTarget(
//            name: "Flutter",
//            url: "https://sociomile-sdk.s3.ap-southeast-1.amazonaws.com/sociomile-ios-sdk/sandbox/0.0.2/Flutter.xcframework.zip",
//            checksum: "3c4e90e3c656a29f1bb01814fdc4be973f5b930d9a6dcbadf189b080674318eb"
//        ),
//        .binaryTarget(
//            name: "FlutterPluginRegistrant",
//            url: "https://sociomile-sdk.s3.ap-southeast-1.amazonaws.com/sociomile-ios-sdk/sandbox/0.0.2/FlutterPluginRegistrant.xcframework.zip",
//            checksum: "44668d9c0f3f34dc0de0f73ff291aceb1355bd5fa1b1948cd3afa68cd3e13464"
//        ),
//        .target(name: "Sociomile",
//                        dependencies: [
////                            .target(name: "SociomileSDK"),
////                            .product(name: "sociomile-app-sdk-ios", package: "sociomile-app-sdk-ios"),
////                            .product(name: "sociomile-flutter-sdk-ios", package: "sociomile-flutter-sdk-ios"),
////                            .product(name: "sociomile-plugin-registrant-sdk-ios", package: "sociomile-plugin-registrant-sdk-ios")
//                        ],
//                path: "Sources"
//        )
    ]
)
