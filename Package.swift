// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SociomileSDK",
    platforms: [
      .iOS(.v14), .tvOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SociomileSDK",
            targets: ["SociomileSDKTarget"]),//, "App", "Flutter", "FlutterPluginRegistrant"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
          name: "SociomileSDK",
          url: "https://sociomile-sdk.s3.ap-southeast-1.amazonaws.com/sociomile-ios-sdk/sandbox/0.0.2/SociomileSDK.xcframework.zip",
          checksum: "89d7aa26e90ea100f931e21c27f3425351bc662e9b42bd1e465b66b98a5feffa"
//          path: "./Sources/SociomileSDK.xcframework"
        ),
        .binaryTarget(
          name: "App",
          url: "https://sociomile-sdk.s3.ap-southeast-1.amazonaws.com/sociomile-ios-sdk/sandbox/0.0.2/App.xcframework.zip",
          checksum: "7b27a575ae9c2738e370891f30df0a9d8fd1d15930892ca8cf7362fb1f1d4097"
        ),
        .binaryTarget(
          name: "Flutter",
          url: "https://sociomile-sdk.s3.ap-southeast-1.amazonaws.com/sociomile-ios-sdk/sandbox/0.0.2/Flutter.xcframework.zip",
          checksum: "3c4e90e3c656a29f1bb01814fdc4be973f5b930d9a6dcbadf189b080674318eb"
        ),
        .binaryTarget(
          name: "FlutterPluginRegistrant",
          url: "https://sociomile-sdk.s3.ap-southeast-1.amazonaws.com/sociomile-ios-sdk/sandbox/0.0.2/FlutterPluginRegistrant.xcframework.zip",
          checksum: "44668d9c0f3f34dc0de0f73ff291aceb1355bd5fa1b1948cd3afa68cd3e13464"
        ),
        .target(
            name: "SociomileSDKTarget",
            dependencies: [
                .target(name: "SociomileSDK"),
                .target(name: "App"),
                .target(name: "Flutter"),
                .target(name: "FlutterPluginRegistrant")
            ],
            path: "Sources"
        )
//        .testTarget(
//            name: "SociomileSDKTests",
//            dependencies: ["SociomileSDK"]),
    ]
)
